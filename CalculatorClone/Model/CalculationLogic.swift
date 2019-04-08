//
//  CalculationLogic.swift
//  CalculatorClone
//
//  Created by Merouane Tazeka on 2019-04-08.
//  Copyright © 2019 Merouane Tazeka. All rights reserved.
//

import Foundation

class CalculationLogic {
    
    var number: Double
    
    init(n: Double) {
        number = n
    }
    
    func calculate(symbol: String) -> Double? {
        
            if symbol == "+/-" {
                return number * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return number/100
            }
        return nil
    }
}
