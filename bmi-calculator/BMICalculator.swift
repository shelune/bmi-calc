//
//  BMICalculator.swift
//  bmi-calculator
//
//  Created by iosdev on 5.4.2016.
//  Copyright © 2016 iosdev. All rights reserved.
//

import Foundation

class BMICalculator {
    private var height = 0
    private var weight = 0
    
    init(weight: Int, height: Int) {
        self.height = height
        self.weight = weight
    }
    
    init() {
        
    }
    
    func calculate() -> String {
        var bmi = Double(weight) / (Double(height) * Double(height) / 100.00) * 100
        return "BMI Value: \(NSString(format: "%.2f", bmi) as String)"
    }
    
    func setHeight(height: Int) {
        self.height = height
    }
    
    func setWeight(weight: Int) {
        self.weight = weight
    }
}
