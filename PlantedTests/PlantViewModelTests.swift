import Foundation

import XCTest
@testable import Planted

class PlantViewModelTests: XCTestCase {

    func testPropertiesAreSet() {
        let plant = Plant(name: "Test Plant")
        let pvm = PlantViewModel(plant: plant)
        XCTAssertEqual(pvm.name, plant.name)
    }

}
