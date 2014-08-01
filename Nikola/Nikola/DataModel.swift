//
//  DataModel.swift
//  Nikola
//
//  Created by William Clark on 8/1/14.
//  Copyright (c) 2014 fuseproject. All rights reserved.
//

// notes:
// http://vperi.com/2014/06/05/singleton-pattern-in-swift/
// http://stackoverflow.com/questions/24024549/dispatch-once-singleton-model-in-swift

import Foundation

class DataModel {
    // setup singleton
    class var instance: DataModel {
        struct Static {
            static let instance : DataModel = DataModel()
        }
        return Static.instance
    }
    
    // modes
    // eventually may replace this with a more flexible data structure
    // for now, we just need names
    let Modes: Array<String> = ["Mode 1", "Mode 2", "Mode 3", "Mode 4"]
}