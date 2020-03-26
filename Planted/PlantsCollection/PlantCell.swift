import UIKit

class Plantcell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func render(plantVM: PlantViewModel) {
        nameLabel.text = plantVM.name
        nameLabel.sizeToFit()
    }
    
}
