//
//  PlantViewController.swift
//  Planted
//
//  Created by Sarah Lichter on 3/23/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit

class PlantViewController: UIViewController {
    var plantVM: PlantViewModel!

    @IBOutlet weak var plantHeading: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var light: UILabel!
    @IBOutlet weak var datePlanted: UILabel!
    
    override func viewDidLoad() {
        render()
    }
    
    func render() {
        plantHeading.text = plantVM.name
        location.text = plantVM.location
        light.text = plantVM.lightCondition
        datePlanted.text = plantVM.datePlanted
    }
    
}
