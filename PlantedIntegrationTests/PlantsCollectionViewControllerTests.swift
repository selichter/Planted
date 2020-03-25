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
    let jadePlant = Plant(name: "Jade")
    let spiderPlant = Plant(name: "Spider Plant")

    override func setUp() {
        super.setUp()
        plantsCollectionViewController = instantiateWithoutLoad(fromStoryboard: "Main", withIdentifier: "PlantsCollectionVC")
    }

    func testPlantCellsDisplayValues() {
        plantsCollectionViewController.loadView()
        plantsCollectionViewController.render(PlantsViewModel([jadePlant, spiderPlant]))

        let plantOne = plantsCollectionViewController.collectionView(plantsCollectionViewController.collectionView, cellForItemAt: IndexPath(row: 0, section: 0)) as! Plantcell

        let plantTwo = plantsCollectionViewController.collectionView(plantsCollectionViewController.collectionView, cellForItemAt: IndexPath(row: 1, section: 0)) as! Plantcell
        
        XCTAssertEqual(plantOne.nameLabel.text, "Jade")
        XCTAssertEqual(plantTwo.nameLabel.text, "Spider Plant")
    }
}
