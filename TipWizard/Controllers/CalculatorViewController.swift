//
//  CalculatorViewController.swift
//  TipWizard
//
//  Created by Kağan Değirmen on 7.01.2024.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    var tip = 0.10
    var splitNumber = 2

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let buttonTitle = sender.currentTitle!
        let buttonTip = String(buttonTitle).dropLast()
        tip = Double(buttonTip)! / 100
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(splitNumber)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        var billTotal = Float(billTextField.text!)!
        var billPlusTip = billTotal + (billTotal * Float(tip))
        var totalPerPerson = billPlusTip / Float(splitNumber)
        
        print(totalPerPerson)
    }
}

