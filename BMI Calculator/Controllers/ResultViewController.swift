//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Hussein Reda on 18/09/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiResultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color

    }
    

    @IBAction func recalcultePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    

}
