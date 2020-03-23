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
        And("I see a greeting displayed")
        And("I see a plants collection displayed")   
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
        
        step("I see a greeting displayed") {
            let text = self.app.textViews["landingPageHeader"].value as! String
            XCTAssertEqual(text, "Hello, Sarah")
        }
        
        
        step("I see a plants collection displayed") {
            let firstCell = self.app.collectionViews.cells.element(boundBy: 0)
            let secondCell = self.app.collectionViews.cells.element(boundBy: 1)
            
            XCTAssertEqual(firstCell.staticTexts["plantName"].label, "Fiddle Leaf Fig")
            XCTAssertEqual(secondCell.staticTexts["plantName"].label, "Pilea")

        }
        

        
    }
}
