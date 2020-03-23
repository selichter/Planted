import UIKit

class Plantcell: UICollectionViewCell {
    var nameLabel = UILabel()

    func render(plant: Plant) {
        nameLabel.text = plant.name
        nameLabel.sizeToFit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        contentView.addSubview(nameLabel)
        
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        nameLabel.accessibilityIdentifier = "plantName"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
