//
//  ViewController.swift
//  Planted
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    let data = [
        Plant(name: "Fiddle Leaf Fig"),
        Plant(name: "Pilea"),
        Plant(name: "Aloe")
    ]
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(Plantcell.self, forCellWithReuseIdentifier: "cell")
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let textView = getTextView()
        view.addSubview(textView)
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .gray
        collectionView.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 10).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
        
    }
    
    func getTextView() -> UITextView {
        let textView = UITextView()
        textView.text = "Hello, Sarah"
        
        textView.frame = CGRect(x: 10, y: 50, width: 100, height: 30)
        textView.accessibilityLabel = "landingPageHeader"
        return textView
    }

}

extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2, height: collectionView.frame.height/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? Plantcell ?? Plantcell()
        cell.render(plant: data[indexPath.item])
        cell.backgroundColor = .red
        return cell
    }
    
    
}
