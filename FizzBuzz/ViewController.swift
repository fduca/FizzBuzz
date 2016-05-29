//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Francesca Cuda on 23/05/2016.
//  Copyright © 2016 Francesca Cuda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var score = 0
    
    @IBOutlet weak var numberButton: UIButton!
    
    @IBAction func numberButtonTapped(sender: UIButton) {
        if (score + 1) % 3 != 0 && (score + 1) % 5 != 0{
        sender.setTitle("\(score)", forState: .Normal)
        }
    }

    @IBAction func fizzButtonTapped(sender: AnyObject) {
        if (score + 1) % 3 == 0  && (score + 1) % 5 != 0 {
           score += 1
            numberButton.setTitle("\(score)", forState: .Normal)
        }
    }

    @IBAction func buzzButtonTapped(sender: AnyObject) {
        if score % 5 == 0 && (score + 1) % 3 != 0 {
            score += 1
            numberButton.setTitle("\(score)", forState: .Normal)
        }
    }
    
    
    @IBAction func fizzBuzzTapped(sender: AnyObject) {
        if (score + 1) % 15 == 0 {
            score += 1
            numberButton.setTitle("\(score)", forState: .Normal)
        }
    }
    
}

