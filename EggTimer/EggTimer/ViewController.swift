import UIKit
import AVFAudio
class ViewController: UIViewController {

    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 700]
    var timer = Timer()
    @IBOutlet weak var titleLabel: UILabel!
    
    var secondsPassed = 0
    var totalTime = 0
    
    var player: AVAudioPlayer!
    let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") // declaring the path to the audio that is going to be used
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate() // each time our user presses a new buttom, the timer begins a new countdown
        progressBar.progress = 0.0 // same logic as in the timer
        secondsPassed = 0
        let hardness = sender.currentTitle!
        titleLabel.text = hardness // displaying which type of the egg is selected by a user
        totalTime = eggTimes[hardness]!
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
        }
        else{
            timer.invalidate()
            titleLabel.text = "Done, your egg is ready!"
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                            self.player.stop()
                        }
        }
    }
}
