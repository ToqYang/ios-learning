//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPcButton: UIButton!
    @IBOutlet weak var tenPcButton: UIButton!
    @IBOutlet weak var twentyPcButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    var tipValue: Float = 0.0
    var dividedPeople: Int = 0
    var paidPerPerson: Float = 0.0
    
    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPcButton.isSelected = false
        tenPcButton.isSelected = false
        twentyPcButton.isSelected = false
        
        sender.isSelected = true
        let title = sender.title(for: .normal)!.split(separator: Character("%"))
        tipValue = Float(title[0])!
        
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        dividedPeople = Int(sender.value)
        splitNumberLabel.text = String(dividedPeople)
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let totalBill: Float = Float(billTextField.text!)!
        let totalTip = totalBill * (tipValue / 100)
        
        paidPerPerson = (totalBill + totalTip) / Float(dividedPeople)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if (segue.identifier == "resultPaid") {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalMsg = String(format: "%.2f", paidPerPerson)
            destinationVC.settingsMsg = "Split between \(dividedPeople), with \(tipValue)% tip"
        }
        
    }
}

