// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let tutorialTeam = 56
let editorialTeam = 23
//let totalTeam = tutorialTeam + editorialTeam
var totalTeam = tutorialTeam + editorialTeam
totalTeam += 1

let priceIntInferred = -19
let priceIntExplicit:Int = -19

let priceInferred = -19.9
let priceExplicit:Double = -19.9

let priceFloatIntferred = -19.9
let pricefloatExplicit:Float = -19.9

let onSeleInferred = false
let onSaleExplicit:Bool = false

let nameInferred = "Whoopie Cushion"
let nameExplicit:String = "Whoopie Cushion"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","Milk"]

var testInsert: [String] = ["Dog","Cat"]


var shoppingList = ["Banana","Mango"]
println("The shopping list contains \(shoppingList.count) item.")
shoppingList.append("Flour")
//shoppingList += "Baking Powder"
shoppingList += ["Chocolate Spread","Cheese","butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
shoppingList[0...3] = ["Bananas","Apples"]
shoppingList

if (onSeleInferred) {
    println("\(nameInferred) on sale for \(priceIntInferred)")
} else {
    println("\(nameInferred) at regular price: \(priceIntInferred)")
}
