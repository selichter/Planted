//
//  PlantsCollectionViewControllerTests.swift
//  PlantedIntegrationTests
//
//  Created by Sarah Lichter on 3/24/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import XCTest
@testable import Planted

class PlantsCollectionIntegrationTests: XCTestCase {
    var plantsCollectionViewController: PlantsViewController!
    let africanViolet = Plant(name: "African Violet",
                              location: .kitchen,
                              lightConditions: .sun,
                              datePlanted: Date())
    
    let cactus = Plant(name: "Cactus",
                       location: .office,
                       lightConditions: .shade,
                       datePlanted: Date("2020-02-28"))

    override func setUp() {
        super.setUp()
        plantsCollectionViewController = instantiateWithoutLoad(fromStoryboard: "Main", withIdentifier: "PlantsCollectionVC")
    }

    func testPlantCellsDisplayValues() {
        plantsCollectionViewController.loadView()
        plantsCollectionViewController.render(PlantsViewModel([africanViolet, cactus]))

        let plantOne = plantsCollectionViewController.collectionView(plantsCollectionViewController.collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as! Plantcell

        let plantTwo = plantsCollectionViewController.collectionView(plantsCollectionViewController.collectionView, cellForItemAt: IndexPath(row: 1, section: 0)) as! Plantcell
        
        XCTAssertEqual(plantOne.nameLabel.text, "African Violet")
        XCTAssertEqual(plantTwo.nameLabel.text, "Cactus")
    }
}
