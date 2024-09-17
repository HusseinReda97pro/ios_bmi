//
//  CalculteBrain.swift
//  BMI Calculator
//
//  Created by Hussein Reda on 18/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit


struct CalcultorBrain   {
    
    var bmi : BMI?
    
    
    mutating func calculteBMI(height:Float,weight:Float){
        let bmiValue = weight/pow(height, 2) // pow => power of 2
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More pies!", color: .blue )
        }else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        
//        if let safeBMI = bmi {
//            let bmiValue =  String(format:"%.1f", safeBMI)
//            return bmiValue
//        }
        
        return  String(format:"%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return  bmi?.advice ?? ""
    }
    
    
    func getColor() -> UIColor {
        return  bmi?.color ?? .clear
    }
    
}
