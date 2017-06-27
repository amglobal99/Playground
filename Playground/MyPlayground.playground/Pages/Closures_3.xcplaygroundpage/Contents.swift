//: [Previous](@previous)

import Foundation



// Declare a function that takes a closure
func go(name:String, age:Int, handler: (String, String)->() ) {
  print("Line 1")
  handler("jack",  "kim")
  
  
}


// define your closure code
var hnd: (String, String) -> () = {  str1, str2 in
  print("I have \(str1)  and \(str2) ")
}

print("test")


// Call the function. Supply the clsore code
go(name: "pauline", age: 7, handler: hnd)












//: [Next](@next)
