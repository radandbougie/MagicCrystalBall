//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Kandice McGhee on 10/25/18.
//

import UIKit

class ViewController: UIViewController {
    
    let answers = ["YAAASSSSS", "Absolutely.", "Duh", "Yes", "Probably", "Girl, I GUESS.", "Mood AF", "Tell me more", "TTYL", "I don't know her.", "Ask again later", "PICASSO IS DEAD", "What's funnier than 24?", "Dude, I did not need to know that.", "Very doubtful", "Not on your life, sport.", "It's a no from me.", "Absolutely the f*ck not"]

    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        // 1
        let maxIndex = UInt32(answers.count)
        // 2
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        // 3
        answerLabel.text = answers[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
}

