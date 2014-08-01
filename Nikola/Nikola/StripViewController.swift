//
//  StripViewController.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class StripViewController: SWRevealViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var stripView: StripView!
    var colorPicker: RSColorPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stripView = UIView.loadFromNibNamed("StripView") as StripView
        self.view.addSubview(stripView)
        
        // set up color picker
        colorPicker = RSColorPickerView(frame: CGRectMake(20, 78, 160, 160))
        self.view.addSubview(colorPicker)

        // set up mode picker
        self.stripView.modePicker.dataSource = self;
        self.stripView.modePicker.delegate = self;
        
        // set up menu view action
        self.stripView.settingsBtn.addTarget(self.revealViewController(), action: "revealToggle:", forControlEvents: UIControlEvents.TouchDown)
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        // set strip # title
        stripView.setStripNum(self.tabBarController.selectedIndex+1)
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return DataModel.instance.Modes.count
    }
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return DataModel.instance.Modes[row]
    }
}