//
//  MainViewController.swift
//  Nikola
//
//  Created by William Clark on 7/31/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var titleLabel: UILabel!
    
    var pageIndex : Int = 0
    var titleText: String?
    var bgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad();
//        println("MainViewController — viewDidLoad() with title: \(self.titleText)")
//        self.titleLabel.text = self.titleText
//        self.view.backgroundColor = self.bgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func setTitle(title: String) {
        titleText = title
        println("MainViewController — title set to: \(titleText)")
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let titleObj: String = titleText {
            self.titleLabel!.text = titleObj
        } else {
            self.titleLabel!.text = ""
        }
    }
}