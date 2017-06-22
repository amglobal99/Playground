//: [Previous](@previous)

import Foundation

import Alamofire









func go(name:String, age:Int, handler: (String, String)->() ) {
  
  print("Line 1")
  handler("jack",  "kim")
  
  
}


var hnd: (String, String) -> () = {
  str1, str2 in
  print("I have \(str1)  and \(str2)")
}


go(name: "pauline", age: 7, handler: hnd)

