//
//  ViewController.swift
//  How Many Fingers Game
//
//  Created by remy on 5/29/15.
//  Copyright (c) 2015 LiquidGroup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet var enteredFingers: UITextField!
    
    @IBOutlet var fingersButton: UIButton!

    @IBOutlet var resultLabel: UILabel!
  
    @IBAction func fingersCalculator(sender: UIButton) {
        
        var fingerGenerator = arc4random_uniform(6)
        var fingerNumber = enteredFingers.text.toInt()
        
        if fingerNumber != nil {
            
            if Int(fingerGenerator) == fingerNumber {
                
                resultLabel.text = "You are correct"
                
            } else {
                
                resultLabel.text = "You are wrong it was \(fingerGenerator)"
            }
    
        } else {
            
            resultLabel.text = "Please enter a number from 0 to 5"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fingersButton.setTitle("Guess My Fingers", forState: .Normal)
        fingersButton.setTitle("Finished Guessing", forState: .Selected)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

