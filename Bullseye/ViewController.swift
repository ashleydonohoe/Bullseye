//
//  ViewController.swift
//  Bullseye
//
//  Created by Ashley Donohoe on 6/28/18.
//  Copyright © 2018 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetNumberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    var randomTarget: Int = 0
    var score: Int = 0
    var round: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        generateRandomTarget()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func hitButtonPressed(_ sender: UIButton) {
        let selectedNumber = Int(slider.value.rounded())
        print(selectedNumber)
        checkForMatch(selectedNumber: selectedNumber)
    }
    
    @IBAction func redoButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func infoButtonPressed(_ sender: UIButton) {
    }
    
    func generateRandomTarget() {
        randomTarget = Int(arc4random_uniform(100) + 1)
        targetNumberLabel.text = "Put the Bull's Eye as close as you can to: \(randomTarget)"
    }
    
    func checkForMatch(selectedNumber: Int) {
        // Scoring = difference between selected and random number
        let difference = 100 - abs(selectedNumber - randomTarget)
        if(selectedNumber == randomTarget) {
            print("You got it!")
        }
        
    }
}

