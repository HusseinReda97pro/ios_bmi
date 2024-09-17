//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculteViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSilder: UISlider!
    
    var calcultorBrain = CalcultorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanges(_ sender: UISlider) {
        heightLabel.text = "\(String(format:"%.2f",sender.value))m"
    }
    
    @IBAction func weightSliderChanges(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSilder.value
        
        calcultorBrain.calculteBMI(height:height,weight:weight)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination  as! ResultViewController
            destinationVC.bmiValue = calcultorBrain.getBMIValue()
            destinationVC.advice = calcultorBrain.getAdvice()
            destinationVC.color = calcultorBrain.getColor()
        }
    }
    
}

