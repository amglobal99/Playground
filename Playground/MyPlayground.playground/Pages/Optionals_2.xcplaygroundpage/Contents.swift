//: [Previous](@previous)

import Foundation
import UIKit


var name: String?
var qty:Int?
var city:String!


name = "Kasey"
qty = 10
city = "Miami"




//print("name is \(name!)")


if let temp  = name {
    print("I have  a value for name variable: \(temp) ")
} else {
    print("this is nil")
}

// Use the nil coalescing operator
let temp2 = name ?? "No value"
print(temp2)








/*

var str1:String
var str2:String?
var total:String


str1 = "first "
str2 = "tt"


if let temp = str2 {
    var total = temp + " - "
    print(total)
} else {
    print("not unwrapped")
}

*/









//: [Next](@next)
