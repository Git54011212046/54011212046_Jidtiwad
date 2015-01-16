// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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
