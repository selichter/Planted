//
//  ViewController.swift
//  Planted
//
//  Created by Sarah Lichter on 3/14/20.
//  Copyright © 2020 Sarah Lichter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textView = getTextView()
        self.view.addSubview(textView)
        
    }
    
    func getTextView() -> UITextView {
        let textView = UITextView()
        textView.text = "Hello, Sarah"
        textView.frame = CGRect(x: 50, y: 50, width: 100, height: 30)
        textView.accessibilityLabel = "landingPageHeader"
        return textView
    }

}
