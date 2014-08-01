//
//  StripViewController.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class StripViewController: UIViewController {
    var stripView: StripView!
    var colorPicker: RSColorPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stripView = UIView.loadFromNibNamed("StripView") as StripView
        self.view.addSubview(stripView)
        
        colorPicker = RSColorPickerView(frame: CGRectMake(81, 107, 160, 160))
        self.view.addSubview(colorPicker)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        println("StripViewController — viewDidAppear()")
        stripView.setStripNum(self.tabBarController.selectedIndex+1)
    }
}