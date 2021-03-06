//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation


class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subTotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    //3
    init(total:Double, taxPct:Double) {
        self.total = total
        self.taxPct = taxPct
        
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) ->Double{
        return subTotal * tipPct
    }
    
    //1
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        
        //2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip * 100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

//6
//let tipCalc = TipCalculatorModel(total: 33.25, taxPcy: 0.06)
