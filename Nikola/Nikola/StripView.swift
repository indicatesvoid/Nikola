//
//  StripView.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class StripView: UIView {
    @IBOutlet weak var stripNumLabel: UILabel!
    @IBOutlet weak var colorPickerFrame: UIView!
    @IBOutlet weak var modePicker: UIPickerView!
    @IBOutlet weak var settingsBtn: UIButton!
    
    var stripNum: Int!
    
    func setStripNum(num: Int) {
        stripNum = num
        stripNumLabel.text = "Strip \(String(stripNum))"
    }
}
