// Playground - noun: a place where people can play

import UIKit

class zooArray{
    var nameArray = ["Ant", "Bird", "Cat", "Dog"]
    var foodArray = ["Suga", "Bug", "Fish", "PetDegree"]
    
    init (){}
    
    func checkName(Name:String)  {
        var result: Int = -1
        for (var k = 0; k < nameArray.count; k++) {
            if (nameArray[k] == Name) {
              result = k
            }
        }
        if (result > -1) {
            printResult(result)
        } else {
            println("the animal name \(Name) is not contained in the zoo.")
        }
        
        
    }
    func printResult(indexResult: Int) {
        println("name \(nameArray[indexResult]) food \(foodArray[indexResult])")
    }
}
let zoo = zooArray()
//zoo.checkName("Ant")
zoo.checkName("forg")



