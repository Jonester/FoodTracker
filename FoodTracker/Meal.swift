//
//  Meal.swift
//  FoodTracker
//
//  Created by Chris Jones on 2017-02-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

import UIKit

class Meal {
    
    //Mark: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //Mark: Initialization
 
    init? (name: String, photo: UIImage?, rating: Int) {
        
        guard  !name.isEmpty else {
            return nil
        }
        
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    
}
