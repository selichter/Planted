//
//  PlantViewController.swift
//  Planted
//
//  Created by Sarah Lichter on 3/23/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit

class PlantViewController: UIViewController {

    @IBOutlet weak var plantHeading: UILabel!
    
    var plantVM: PlantViewModel!
    
    override func viewDidLoad() {
        plantHeading.text = plantVM.name
        
    }
    
}

