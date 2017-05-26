//
//  ViewController.swift
//  Click Counter
//
//  Created by Kim Wayne on 5/26/17.
//  Copyright © 2017 GthomasWADE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        var label = UILabel()
        label.frame = CGRect.init(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        // Button
        var button = UIButton()
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
    }
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
}
