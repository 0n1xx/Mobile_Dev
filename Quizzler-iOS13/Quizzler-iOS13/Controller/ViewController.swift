import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!    
    @IBOutlet weak var falseButton: UIButton!
    
    @IBOutlet weak var correctScore: UILabel!
    var quizBrain = QuizBrain();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    // Increasing a number of the question as soon as a true or false button clicked
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle?.lowercased() ?? ""
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.3, target:self, selector: #selector(updateUI), userInfo:nil, repeats:false)
    }
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        correctScore.text = "Score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear        
    }
}

