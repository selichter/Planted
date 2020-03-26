//
//  PlantsViewModelTests.swift
//  PlantedTests
//
//  Created by Sarah Lichter on 3/24/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation

import XCTest
@testable import Planted

class HabitsViewModelTests: XCTestCase {
    let africanViolet = Plant(name: "African Violet",
                              location: .kitchen,
                              lightConditions: .sun,
                              datePlanted: Date())
    
    let cactus = Plant(name: "Cactus",
                       location: .office,
                       lightConditions: .shade,
                       datePlanted: Date("2020-02-28"))
    
    
    func testPlantsAreSet() {
        let plantData = [africanViolet, cactus]
        let plantsVM = PlantsViewModel(plantData)
        
        XCTAssertEqual(plantsVM.plants.count, 2)
        XCTAssertEqual(plantsVM.plants[0].name, "African Violet")
        XCTAssertEqual(plantsVM.plants[1].name, "Cactus")
        
    }
}
