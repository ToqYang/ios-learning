//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Santiago Toquica Yanguas on 3/08/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    
    var totalMsg: String? = ""
    var settingsMsg: String? = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalLabel.text = totalMsg
        settingsLabel.text = settingsMsg
    }
    
    @IBAction func recalculatePress(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
