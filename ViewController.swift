//
//  ViewController.swift
//  FoodTracker
//
//  Created by 123 on 16.04.2020.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    //MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        nameTextField.delegate = self
       
        }
        
        //MARK: UITextFieldDelegate
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            // Hide the keyboard.
            textField.resignFirstResponder()
            return true
        }
        
        func textFieldDidEndEditing(_ textField: UITextField) {
            mealNameLabel.text = textField.text
        }

        
       


//MARK: Actions
    @IBAction func setDefaultLablText(_ sender: UIButton) {
        mealNameLabel.text = "Default text"
        
    }
}

