// Playground - noun: a place where people can play

import UIKit

class calculator {
    /*let label:String
    let number1:Double
    let number2:Double*/
    init (label:String, value1:Double, value2:Double) {
        /*self.label = label
        self.number1 = value1
        self.number2 = value2*/
        callFunc(label, number1: value1, number2: value2)
    }
    func callFunc(label:String, number1:Double, number2:Double) {
        var result = 0.00
        if (label == "+") {
            result = add(number1, value2: number2)
        }
        else if (label == "-") {
            result = curtail(number1, value2: number2)
        }
        else if (label == "*") {
            result = multiply(number1, value2: number2)
        }
        else if (label == "/") {
            result = mod(number1, value2: number2)
        }
        print(result)
    }
    func add(value1:Double, value2:Double) ->Double {
        var result:Double
        result = value1 + value2
        return result
    }
    func curtail(value1:Double, value2:Double) ->Double {
        var result:Double
        result = value1 - value2
        return result
    }
    func multiply(value1:Double, value2:Double) ->Double {
        var result:Double
        result = value1 * value2
        return result
    }
    func mod(value1:Double, value2:Double) ->Double {
        var result:Double
        result = value1 / value2
        return result
    }
    func print(result:Double) {
        println("result \(result)")
    }
}
let calculate = calculator(label: "*", value1: 15, value2: 4.7)

