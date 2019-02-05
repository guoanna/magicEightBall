//
//  ViewController.swift
//  magicEightBall
//
//  Created by Anna Guo on 2/4/19.
//  Copyright © 2019 Anna Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var answerLabel: UILabel!
    var index = -1
    let results = ["It is certain",
                   "It is decidedly so",
                   "Without a doubt",
                   "Yes, definitely",
                   "You may rely on it",
                   "As I see it, yes",
                   "Most likely",
                   "Outlook good",
                   "Yes",
                   "Signs point to yes",
                   "Reply hazy try again",
                   "Ask again later",
                   "Better not tell you now",
                   "Cannot predict now",
                   "Concentrate and ask again",
                   "Don't count on it",
                   "My reply is no",
                   "My sources say no",
                   "Outlook not so good",
                   "Very doubtful"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func yesNoButtonPressed(_ sender: UIButton) {
        var newIndex = -1
        repeat {
            newIndex = Int.random(in: 0..<results.count)
        } while index == newIndex
        
        index = newIndex
        answerLabel.text = results[index]
    }
    
}

