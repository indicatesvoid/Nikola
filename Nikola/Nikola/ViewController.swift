//
//  ViewController.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let view = UIView.loadFromNibNamed("StripView")
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

