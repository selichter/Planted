//
//  PlantsViewModel.swift
//  Planted
//
//  Created by Sarah Lichter on 3/24/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation


class PlantsViewModel {
    var plants = [PlantViewModel]()
    init(_ plantsData: [Plant]) {
        plants = plantsData.map {PlantViewModel(plant: $0)}
    }
}
