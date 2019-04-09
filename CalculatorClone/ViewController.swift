//
//  ViewController.swift
//  CalculatorClone
//
//  Created by Merouane Tazeka on 2019-04-03.
//  Copyright © 2019 Merouane Tazeka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberTyped : String = ""
    private var isFinishedTypingNumber : Bool = true
    
    private var displayValue: Double {
        get {
            guard let number =  Double(displayLabel.text!) else {fatalError("Cannot convert display label into Double!")}
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    private var calculator = CalculationLogic()
    
    @IBAction func CalculationButtonPressed(_ sender: UIButton) {
        
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)
 
        if let calcMethod = sender.currentTitle {
            
            guard let result = calculator.calculate(symbol: calcMethod) else {
                fatalError("The result of the calculation is nil")
            }
            
            displayValue = result
            
        }
        
    }
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
            
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                
                if numValue == "." {

                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + numValue
            }
            
        }
    }
}

