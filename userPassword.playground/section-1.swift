// Playground - noun: a place where people can play

import UIKit
class userPassword {
    var user: [Int: String] = [:]
    var pass: [Int: String] = [:]
    init (/*function:String, userInput:String, passInput:String*/) {
        /*callFunc(function, userInput: userInput, passInput: passInput)*/
    }
    /*func callFunc(function:String, userInput:String, passInput:String) {
        var index = checkIndex()
        if (function.lowercaseString == "add") {
            addUserPassword(index, userAdd: userInput, passAdd: passInput)
        }
    }*/
    func checkIndex() ->Int{
        var index:Int
        index = user.count
        return index
    }
    func addUserPassword(userAdd:String, passAdd:String) {
        var index = checkIndex()
        user[index] = userAdd
        pass[index] = passAdd
        println("Add user : \(userAdd) and password : \(passAdd) complete." )
    }
    func deleteUserPassword(userDelete:String, passDelete:String) {
        var key = -1
       // var oldUser = ""
        for (var i = 0; i < user.count; i++) {
            if (user[i] == userDelete) {
                key = i
                //oldUser = user[i]
            }
        }
        if (key > -1) {
            user.removeValueForKey(key)
            pass.removeValueForKey(key)
            println("Delete user : \(userDelete) and password : \(passDelete) complete.")
        }else {
            println("user : \(userDelete) and password : \(passDelete) incurrent.")
        }
        
        
    }
}

let call = userPassword()
call.addUserPassword("many", passAdd: "olpi0123")
call.addUserPassword("tony", passAdd: "ozaka")
call.deleteUserPassword("king", passDelete: "123")
call.deleteUserPassword("tony", passDelete: "ozaka")

