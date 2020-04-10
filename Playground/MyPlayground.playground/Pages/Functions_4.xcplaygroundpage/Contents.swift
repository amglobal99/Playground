//: [Previous](@previous)

import Foundation



// Function returns a function
func test1(amt: Int) -> () -> Int {
  
      var total:Int = 10
      
        func retFunc() -> Int {
          total += amt
          return total
        }
        
      
      return retFunc
    
  }




var a = test1(amt: 50)

var b = a()
var c = a()
var d = a()


print(b)
print(c)
print(d)






















//: [Next](@next)
