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
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
}
