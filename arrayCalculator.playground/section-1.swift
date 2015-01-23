// Playground - noun: a place where people can play

import UIKit

// Playground - noun: a place where people can play

class TipCalculator{
    
    //2
    let total: Double
    let taxPct: Double
    let subTotal: Double
    
    //3
    init(total:Double, taxPcy:Double) {
        self.total = total
        self.taxPct = taxPcy
        subTotal = total / (taxPct + 1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double) ->Double{
        return subTotal * tipPct
    }
    
    //1
    func returnPossibleTips() -> [Int: Double] {
        let possibleTipsInferred = [0.15, 0.18, 0.20]
        let possibleTipsExplicit:[Double] = [0.15, 0.18, 0.20]
        var numberOfItems = possibleTipsInferred.count
        
        //2
        var retval = [Int: Double]()
        for possibleTip in possibleTipsInferred {
            let intPct = Int(possibleTip*100)
            //3
            retval[intPct] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}

//6
let tipCalc = TipCalculator(total: 33.25, taxPcy: 0.06)
tipCalc.returnPossibleTips()

