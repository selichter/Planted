//
//  PlantData.swift
//  Planted
//
//  Created by Sarah Lichter on 3/25/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import Foundation


var stagedPlantData = [flf, pilea, aloe]

var flf = Plant(name: "Fiddle Leaf Fig",
                location: .livingRoom,
                lightConditions: .sun,
                datePlanted: Date("2020-02-29"))

var pilea = Plant(name: "Pilea",
                  location: .office,
                  lightConditions: .partialSun,
                  datePlanted: Date("2020-01-01"))

var aloe = Plant(name: "Aloe",
                 location: .kitchen,
                 lightConditions: .shade,
                 datePlanted: Date("2019-09-23"))
