import UIKit
import FirebaseAuth
import FirebaseFirestoreInternal

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let db = Firestore.firestore()
    
    var messages: [Message] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        navigationItem.title = K.appName
        navigationItem.hidesBackButton = true // hides the back button in this controller which is responsible for a specific screen
        
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        loadMessages()
    }
    
    func loadMessages(){
        
        db.collection(K.FStore.collectionName).order(by: K.FStore.dateField).addSnapshotListener{ (querySnapshot, error) in
            self.messages = []
            if let error = error {
                print("Error getting documents: \(error)")
            } else {
                if let snapshotDocument = querySnapshot?.documents {
                    for doc in snapshotDocument{
                        let data = doc.data()
                        if let sender = data[K.FStore.senderField] as? String, let messageBody = data[K.FStore.bodyField] as? String{
                            self.messages.append(Message(sender: sender, body: messageBody))
                            
                            DispatchQueue.main.async {
                                self.tableView.reloadData()
                                let lastRow = self.messages.count - 1
                                    if lastRow >= 0 {
                                        let indexPath = IndexPath(row: lastRow, section: 0)
                                        self.tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        if let messageBody = messageTextfield.text, let messageSender = Auth.auth().currentUser?.email{
            db.collection(K.FStore.collectionName).addDocument(data:
                [K.FStore.senderField: messageSender,
                 K.FStore.bodyField: messageBody,
                 K.FStore.dateField: Date().timeIntervalSince1970]) { (error)  in
                if let e = error {
                    print("Error adding document: \(e)")
                } else {
                    print("Successfully saved a new message!")
                    DispatchQueue.main.async {
                        self .messageTextfield.text = "" // Every time when the message is sent, it empties a message bar
                    }
                }
            }
        }
        
    }
    
    @IBAction func logoutPressed(_ sender: UIBarButtonItem) {
        do {
          try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
}

extension ChatViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = messages[indexPath.row]
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        cell.label.text = message.body
        
        // This is a message that is from the current user
        if message.sender == Auth.auth().currentUser?.email {
            cell.leftImageView.isHidden = true
            cell.rightImageView.isHidden = false
            cell.backgroundView?.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
        }
        // This is a message from another sender
        else {
            cell.leftImageView.isHidden = false
            cell.rightImageView.isHidden = true
            cell.backgroundView?.backgroundColor = UIColor(named: K.BrandColors.purple)
        }
    
        return cell
    }
}


