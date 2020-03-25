//
//  PlantedIntegrationTests.swift
//  PlantedIntegrationTests
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import XCTest

extension XCTestCase {
    func instantiateWithoutLoad<T>(fromStoryboard name: String, withIdentifier identifier: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        return viewController
    }

    func instantiateViewController<T>(fromStoryboard name: String, withIdentifier identifier: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: identifier) as! T
        _ = (viewController as! UIViewController).view
        return viewController
    }
}

class PlantedIntegrationTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
