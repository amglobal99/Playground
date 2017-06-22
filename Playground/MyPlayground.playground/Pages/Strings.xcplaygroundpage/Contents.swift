//: [Previous](@previous)

import Foundation


let emptyString = String()
var e2String:String?
var e3String:String = ""


if e2String == nil {
    print("yes")
}else{
    print ("no")
    
}


let myString = String(500)
print (myString)

let a = String(true)


// Example of computeed Property
let jack: String  = {
    var a = "Hello"
    var b = "pUne\u{1F496}🇺🇸"
    b += a
    return b
} ()

print ("My computed string is:   \(jack) ")


var myChar = jack.characters

var charCount = jack.characters.count



let str1 = "\"jack\",\"pauline\" "
print (str1)
debugPrint(str1)





// ================ String Index ====================
var str2 = "Hello World Tommy"

// Give me the fisrt 2 characters from this string
var index1 = str2.index(str2.startIndex, offsetBy: 2)
var dd1 = str2.substring(to: index1) // to stops just before index


// GIve me all characters after character 3
var idx = str2.index(str2.startIndex, offsetBy: 3)
var dd2  = str2.substring(from: idx) // from includes the index position


// give me 5 char from end
var index3 = str2.index(str2.endIndex, offsetBy: -6)
var dd3 = str2.substring(from: index3)


// give me string between position 3 and 7
let start = str2.index(str2.startIndex, offsetBy: 2)
let end = str2.index(str2.endIndex, offsetBy: -2)
let range = start..<end
let dd4 = str2.substring(with: range)








