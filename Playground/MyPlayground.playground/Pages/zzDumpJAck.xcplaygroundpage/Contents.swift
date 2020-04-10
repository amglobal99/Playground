//: [Previous](@previous)

import Foundation
import Alamofire
import SwiftyJSON


//var arr:[Int] = [ 14, 5, 44, 7, 0, 5, 0]






func fact(_ n: Int) -> Int {
   
   print("Starting func ....")
   //return n == 1 ? 1 : n * fact(n — 1)
   
   
   if n == 1 {
      print("n IS 1 ....")
      return 1
   } else {
      print(" n is \(n) ")
      return n * fact(n - 1)
   }
 

   
   
}




var test = fact(4)

print(test)










/*
func factorial(_ N: Int) -> Int {
   if N == 1 {
      return 1
   } else {
      return N * factorial(N - 1)
   }
}

var test = factorial(4)

*/

