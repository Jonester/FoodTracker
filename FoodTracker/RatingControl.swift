//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Chris Jones on 2017-02-11.
//  Copyright © 2017 Jonescr. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //Mark: Intialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //Mark: Private Methods
    
    private func setupButtons() {
        
        let button = UIButton()
        
        button.backgroundColor = UIColor.red
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        addArrangedSubview(button)
    }
    
    }
