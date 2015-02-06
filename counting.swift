//
//  counting.swift
//  CountingNumber
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation

class counting {
    var subCount = 0
    var result: Int {
        get {
            return subCount
        }
    }
    
    init () {}
    
    func oneClick(oneValue: Int) {
        subCount = oneValue + 1
        
    }
    func twoClick() ->Int {
        subCount = subCount + 2
        return subCount
    }
    func threeClick() ->Int {
        subCount = subCount + 3
        return subCount
    }
    
}