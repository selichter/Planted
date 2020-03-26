//
//  PlantViewModel.swift
//  Planted
//
//  Created by Sarah Lichter on 3/25/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation

class PlantViewModel {
    let name: String
    let location: String
    let lightCondition: String
    let datePlanted: String
    
    init(plant: Plant) {
        name = plant.name
        location = plant.location.rawValue
        lightCondition = plant.lightConditions.rawValue
        datePlanted = plant.datePlanted.toString()
    }
}
