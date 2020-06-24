//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mac on 19.06.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

 struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
            print("Underweight")
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
            print("normal")
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
            print("Overweight")
        }
        
        
    }
    
    func getBMIValue() -> String{
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        let advice = bmi?.advice ?? "My programmer doesn't know what to do."
        return advice
    }
    
    func getColor() -> UIColor{
        let color = bmi?.color ?? .white
        return color
    }
 }

