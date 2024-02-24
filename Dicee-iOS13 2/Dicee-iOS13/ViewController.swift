//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var imagesDice = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func rollButtonPresed(_ sender: UIButton) {
        diceImageView1.image = UIImage(imageLiteralResourceName: imagesDice[Int.random(in: 0...5)]);
        diceImageView2.image = UIImage(imageLiteralResourceName: imagesDice[Int.random(in: 0...5)]);
    }
}

