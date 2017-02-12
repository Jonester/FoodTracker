//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Chris Jones on 2017-02-12.
//  Copyright © 2017 Jonescr. All rights reserved.
//

import XCTest

@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //Mark: Meal Class Tests
    
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
