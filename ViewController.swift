//
//  ViewController.swift
//  FoodTracker
//
//  Created by 123 on 16.04.2020.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//MARK: Actions
    @IBAction func setDefaultLablText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

