// Playground - noun: a place where people can play

import UIKit

class zooDic{
    var name: [Int: String] = [1: "Ant", 2: "Bird", 3: "Cat", 4: "Dog"]
    var food: [Int: String] = [1: "Suga", 2: "Bug", 3: "Fish", 4: "PetDegree"]
    
    init (){}
    
    func checkName(Name:String)  {
        var result: Int = 0
        for (var i = 1; i <= name.count; i++) {
            if (name[i] == Name) {
                result = i
            }
        }
        if (result > 0) {
            printResult(result)
        } else {
            println("the animal name \(Name) is not contained in the zoo.")
        }

        
    }
    func printResult(indexResult: Int) {
        println("name \(name[indexResult]) food \(food[indexResult])")
    }
}
let zoo = zooDic()
//zoo.checkName("Ant")
zoo.checkName("Ant")

/*var name: [Int: String] = [1: "Ant", 2: "Bird"]
var food: [Int: String] = [1: "Suga", 2: "Bug"]

if (name[1] == "Ant") {
    println("name \(name[1]) food \(food[1])")
} else {
    println("name \(name[1]) food \(food[1])")
}*/
