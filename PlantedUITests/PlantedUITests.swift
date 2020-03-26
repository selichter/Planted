//
//  PlantedUITests.swift
//  PlantedUITests
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class PlantedUITests: XCTestCase {

    func testPlantedLandingPage() {
        Given("I launch the app")
        And("I see a plants collection displayed")
        When("I tap on the fiddle leaf fig cell")
        Then("I see the single plant view")
    }

    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}


class PlantedStepDefinitions: StepDefiner {
    let app = XCUIApplication()

    func launchApp() {
        self.app.launch()
    }

    override func defineSteps() {
        step("I launch the app") {
            self.launchApp()
        }
        
        step("I see a plants collection displayed") {
            let firstCell = self.app.collectionViews.cells.element(boundBy: 0)
            let secondCell = self.app.collectionViews.cells.element(boundBy: 1)
            
            XCTAssertEqual(firstCell.staticTexts["plantName"].label, "Fiddle Leaf Fig")
            XCTAssertEqual(secondCell.staticTexts["plantName"].label, "Pilea")
        }
        
        step("I tap on the fiddle leaf fig cell") {
            let firstCell = self.app.collectionViews.cells.element(boundBy: 0)
            firstCell.tap()
        }
        
        step("I see the single plant view") {
            let pageHeading = self.app.staticTexts["plantPageHeading"].label
            let location = self.app.staticTexts["locationLabel"].label
            let light = self.app.staticTexts["lightLabel"].label
            let date = self.app.staticTexts["dateLabel"].label
            
            XCTAssertEqual(pageHeading, "Fiddle Leaf Fig")
            XCTAssertEqual(location, "Living Room")
            XCTAssertEqual(light, "Full Sun")
            XCTAssertEqual(date, "February 29, 2020")
            
        }
        
    }
}
