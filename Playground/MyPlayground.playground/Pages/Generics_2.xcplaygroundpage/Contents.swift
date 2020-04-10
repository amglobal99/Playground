//: [Previous](@previous)

import Foundation




/*
func test<T> (_ param1: T) -> T {
   
   print("I have \(param1) ")
   return  param1
   
}



test("jack")

*/




func swap<T> (_ a:T, _ b:T ) -> (T,T) {
   
     let temp  = a
   let first = b
   let second = temp
   
   return(first, second)
}



var x = swap(12,9)




print (x )











//: [Next](@next)
