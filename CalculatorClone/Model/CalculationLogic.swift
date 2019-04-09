//
//  CalculationLogic.swift
//  CalculatorClone
//
//  Created by Merouane Tazeka on 2019-04-08.
//  Copyright © 2019 Merouane Tazeka. All rights reserved.
//

import Foundation

struct CalculationLogic {
    
    private var number: Double?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }

    func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n/100
            } else if symbol == "+" {
                
            } else if symbol == "=" {
                
            }
        }
        return nil
    }
}
