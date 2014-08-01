//
//  UIView+NibLoader.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

extension UIView {
    class func loadFromNibNamed(nibNamed: String, bundle : NSBundle = NSBundle.mainBundle()) -> UIView! {
        return UINib(nibName: nibNamed, bundle: bundle).instantiateWithOwner(nil, options: nil)[0] as? UIView
    }
}