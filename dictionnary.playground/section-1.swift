// Playground - noun: a place where people can play

var airports: [String: String] = ["TYO": "Tokyo", "DUB": "Doblin"]

if airports.isEmpty {
    println("The airport dictionary is empty.")
} else {
    println("The airport dictionary is not empty.")
}

println("The airport dictionary contains \(airports.count) items.")

//UPDATE DICTIONARY

airports["LHR"] = "London"
airports["LHR"] = "London  Heathrow"

if let oldValue = airports.updateValue("Dublin International", forKey: "DUB") {
    println("The old value for DUB was \(oldValue).")
}
airports