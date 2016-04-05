//
//  ViewController.swift
//  bmi-calculator
//
//  Created by iosdev on 5.4.2016.
//  Copyright © 2016 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var BMIValue: UILabel!
    @IBOutlet var bmiPicker: UIPickerView!
    
    let minWeight = 40
    let maxWeight = 201
    let minHeight = 140
    let maxHeight = 201
    
    var selectedWeight = 0
    var selectedHeight = 0
    var bmi = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bmiPicker.selectRow(0, inComponent: 0, animated: true)
        bmiPicker.selectRow(0, inComponent: 1, animated: true)
        selectedWeight = minWeight
        selectedHeight = minHeight
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return "\(row + minWeight) kg"
        } else {
            return "\(row + minHeight) cm"
        }
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return maxWeight - minWeight
        } else {
            return maxHeight - minHeight
        }
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            print("Weight component: \(row + minWeight) selected")
            selectedWeight = row + minWeight
        } else {
            print("Height component: \(row + minHeight) selected")
            selectedHeight = row + minHeight
        }
        bmi = Double(selectedWeight) / (Double(selectedHeight) * Double(selectedHeight) / 100.00) * 100
        BMIValue.text = "BMI Value: \(NSString(format: "%.2f", bmi) as String)"
    }
    
}

