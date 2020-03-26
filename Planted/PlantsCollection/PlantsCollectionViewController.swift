//
//  ViewController.swift
//  Planted
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit


class PlantsViewController: UICollectionViewController {
    var plantsVM: PlantsViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.collectionViewLayout = collectionLayout()

        render(PlantsViewModel(stagedPlantData))
    }
    
    func render(_ plants: PlantsViewModel) {
       plantsVM = plants
       collectionView.reloadData()
   }
    
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return plantsVM.plants.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlantCell", for: indexPath) as? Plantcell ?? Plantcell()
        cell.render(plantVM: plantsVM.plants[indexPath.item])
        cell.backgroundColor = .red
        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showPlant", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPlant" {
            
            if let viewController = segue.destination as? PlantViewController,
                let index = collectionView.indexPathsForSelectedItems?.first {
                let selectedPlant = plantsVM.plants[index.row]
                viewController.plantVM = selectedPlant
                
            }
        }
    }
    
    func collectionLayout() -> UICollectionViewFlowLayout {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

        let width = UIScreen.main.bounds.width - 20
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: width, height: width / 4)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 8
        return layout
    }
    
}


