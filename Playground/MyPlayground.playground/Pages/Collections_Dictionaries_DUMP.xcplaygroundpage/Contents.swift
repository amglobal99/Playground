//: [Previous](@previous)

import Foundation

var dict1: [String:[String]] = [:]
var dict2:[Int:String]
var dict3:[String:String] = [:]


dict1 = ["8":["f","j"],"22":["e","d"],"11":["w","d"],"4":["a","u"]]
dict2 = [10: "Jack",5:"PAul",2:"Karla", 9:"cara"]
dict3 = ["9":"jack","2":"paul","3":"kim", "6":"min"]



/*
var keyArr = Array(dict2.values)
print(keyArr)

print(Array(dict2.keys))
*/



var large = dict2.filter{$0.key > 5 }.map{"\($0.value) TT" }

print(large)










//: [Next](@next)
