//
//  Plant.swift
//  Planted
//
//  Created by Sarah Lichter on 3/22/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation

struct Plant {
    var name: String
    var location: Location
    var lightConditions: Light
    var datePlanted: Date
}

enum Location: String {
    case office = "Office"
    case kitchen = "Kitchen"
    case livingRoom = "Living Room"
    case bedroom = "Bedroom"
}

enum Light: String {
    case dark = "Dark"
    case shade = "Shade"
    case partialSun = "Partial Sun"
    case sun = "Full Sun"
}
