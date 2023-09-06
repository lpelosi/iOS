//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    var rollOne = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageViewOne.image = UIImage(imageLiteralResourceName: "DiceSix")
        diceImageViewTwo.image = UIImage(imageLiteralResourceName: "DiceTwo")
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        
        diceImageViewOne.image = [UIImage(imageLiteralResourceName: "DiceOne"),UIImage(imageLiteralResourceName: "DiceTwo"),UIImage(imageLiteralResourceName: "DiceThree"),UIImage(imageLiteralResourceName: "DiceFour"),UIImage(imageLiteralResourceName: "DiceFive"),UIImage(imageLiteralResourceName: "DiceSix")][rollOne]
        
            rollOne = rollOne + 1
        if rollOne > 5 {
            rollOne = 0
        }
        
    }
    
}

