import Foundation

import XCTest
@testable import Planted

class PlantViewModelTests: XCTestCase {
    
    func testPropertiesAreSet() {
        let aloe = Plant(name: "Monstera",
                         location: .office,
                         lightConditions: .dark,
                         datePlanted: Date("2018-09-23"))
        
        let pvm = PlantViewModel(plant: aloe)
        
        XCTAssertEqual(pvm.name, aloe.name)
        XCTAssertEqual(pvm.location, aloe.location.rawValue)
        XCTAssertEqual(pvm.lightCondition, aloe.lightConditions.rawValue)
        XCTAssertEqual(pvm.datePlanted, "September 23, 2018")
    }

}
