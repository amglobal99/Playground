//: [Previous](@previous)

import Foundation

//var arrDict = [String:[String]] ()   // define empty dictonary key is String, value is array of Strings
// Anoher way of defining
var arrDict:[String:String] = [:]



var dict1: [String:[String]]
dict1 = ["Soups":["French","Tomato","Pea"], "xyz":["a","b","d"]]


var section:String = ""
for (key, value) in dict1 {
    if value.contains("b") {
        section = key
    }
    
}

print("section is  \(section) ")








// let's print the keys in dict1
for (key,_) in dict1 {
    print(key)
}

print("***************************\n\n")


 // print both key and values
for (key, value) in dict1 {
    print("\(key) ++++ \(value)")
}

print("***************************\n\n")








var va:String = String()
for (key, value) in dict1 {
    for i in value {
        va += i + ","
    }
    print("\(key) --> \(va) ")
    
}

print("***************************")












var dict3:[String:String]
dict3 = ["Jack":"one", "PAul":"two", "Kelly":"three"]

print(dict3["Kelly"])


// let's print only the values
for (_, value) in dict3 {
    print(value)
}

print("***************************")


for (key,value) in dict3 {
    print("\(key) ::: \(value)")
}

print("***************************")



dict3.count
dict3.isEmpty
dict3.description
dict3.updateValue("four", forKey: "PAul")

print(dict3)
dict3.reversed()
print("***************************")




// Create empty Dict and the fill with values
var teams:[String:String] = [:]
teams = ["Atlanta":"Falcons","Miami":"Dolphns","Seatle":"Seawaks"]

// Populate empty Dictionary
var jackDict:[String:String] = [:]
jackDict.updateValue("kelly", forKey: "name")
print(jackDict)
jackDict.updateValue("22", forKey: "age" )
print(jackDict)
jackDict.updateValue("pune", forKey: "city")
print(jackDict)



// ========== FILTER a Dictionary ====================
// I want to scan a Dictionary and check if say a value belongs within any of the value arrays
// Once w efind that entry, then I need the KEY for that entry
// Example: get a key for an entry which contains "y" in its values


// Find out which value item contains "t"
var sectionDict:[String:[String]] = [:]

sectionDict = ["2":["p","t","l"],"9":["s","t","u"],"7":["e","y","u"],"5":["k","p","r"]]
var sect = (sectionDict.filter{$1.contains("t")}.first?.key)!
print("+++++++++ sect ++++++++++++++")
print(sect)


var abc = sectionDict.filter{$1.contains("t") }
print(" ++++++++++++++ Sect: \(abc) ")
//print(abc)
print(abc[0].value )









// =============== REDUCE =======================
// NOTE: the first var (result) refers to the incremental result
// The second is the element value


let myDict = [2:"aa",6:"nn", 4:"ee",11:"pp",9:"qq"]
let red2 = myDict.reduce("--"){
    result,val in
    "\(result),\(val.key)"
    
}

print("+++++++++red2: \(red2)  " )

















// =============== MAP ==================
//

var dict4:[String:Int]
dict4 = ["Jack": 10,"PAul":5,"Karla":2]

var temp = dict4.map{
    key, val in
    val * 10
}
print("\n\n+++++++++++++++ MAP ++++++++++++++++++++++")
print(temp)



print("+++++++++ same as above - different way +++++++++++++++++")

var dd1 = dict4.map{
    $1 * 10
}
print(dd1)


// Example 2 for MAP
// This Dictionry has String key and an Array for value
// NOTE: map function even on a Dictionary returns an ARRAY
var dict5:[String:[String]]
dict5 = ["8":["f","j","o"],"22":["e","d","s"],"11":["w","d","g"],"4":["a","s","m"],"5":["z","q","c"],"1":["q","f","b"],"10":["h","r","i"]]

var dd5 = dict5.map{
    key, val in
    "\(key)++Jack"
}
print("\n+++++++++ dd5 ++++++++++++")
print(dd5)


var dd6 = dict5.map {
    key,val in
    val[1].uppercased()
}
print("\n++++++++ dd6  \(dd6)")





// ===== NOTE: 
// For Map function for Dictonary, $0 refers to entire Dictionary
// You have to do $0.key or $0.value to get to key and value


/*
// Another way .. using $0 $1 etc
// Let's crate new array modifying second element in value component
var dd7 = dict5.map{ $1[1].uppercased() }

print("++++++++ USe of $1 ----> \(dd7) ")
*/


// Look at this example. Seems like $0 refers to entire dictionary, not just key
// I had to do $0.key to get to the key field
var dd8 =  dict5.map{ Int($0.key)!}
print("\n\n+++++++using $0.key ----> \(dd8) ")


// Get all the second elemenst from value array
var dd9 = dict5.map{ $0.value[1].uppercased() }
print("\n++++++++++ using $0 value ---> \(dd9)")









//: [Next](@next)
