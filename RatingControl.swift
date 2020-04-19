//
//  RatingControl.swift
//  FoodTracker
//
//  Created by 123 on 19.04.2020.
//  Copyright © 2020 Apple Inc. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Properties
    
    //private var ratingButtons = [UIButton]()
    
    //var rating = 0

    // MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        setupButtons()
        
    }
    required init(coder: NSCoder){
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button action
    @objc func ratingButtonTapped(button: UIButton){
        print("Button pressed 👍")
    }
    
    // MARK: Private Methods
    private func setupButtons(){
        //for _ in 0..<5 {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        //Add constrains
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)),for: .touchUpInside)
        
        addArrangedSubview(button)
    }
}
