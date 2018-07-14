//
//  ViewController.swift
//  MagicEightBall
//
//  Created by William Han on 7/13/18.
//  Copyright © 2018 William Han. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"]
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var shakeButton: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?){
        guard motion == .motionShake else {return}
        generateAnswer()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer()
    }
    
}

