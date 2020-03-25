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
    
    
    func testPlantsAreSet() {
        let plantData = [Plant(name: "African Violet"), Plant(name: "Cactus")]
        let plantsVM = PlantsViewModel(plantData)
        
        XCTAssertEqual(plantsVM.plants.count, 2)
        XCTAssertEqual(plantsVM.plants[0].name, "African Violet")
        XCTAssertEqual(plantsVM.plants[1].name, "Cactus")
        
    }
}
