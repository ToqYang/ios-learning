//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Santiago Toquica Yanguas on 2/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue = "0.0"
    var color: UIColor?
    var advice: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePress(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
