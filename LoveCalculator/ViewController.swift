//
//  ViewController.swift
//  LoveCalculator
//
//  Created by Jason Lee on 2/7/18.
//  Copyright © 2018 Jason Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var theirName: UITextField!
    @IBOutlet weak var loveScoreLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        let loveScore = arc4random_uniform(101)
        if loveScore > 80 {
            loveScoreLabel.text = "Your love score is \(loveScore). You love eachother like Kanye loves Kanye."
        } else if loveScore > 40 && loveScore <= 80 {
            loveScoreLabel.text = "Your love score is \(loveScore). You go together like coke and mentos."
        } else if loveScore > 20 && loveScore <= 40 {
            loveScoreLabel.text = "Your love score is \(loveScore). You are not compatible with this person."
        } else {
            loveScoreLabel.text = "Your love score is \(loveScore). No love possible, you'll be forever alone!"
        }
    }
}

