//: [Previous](@previous)

import Foundation
import Alamofire
import SwiftyJSON






var arr: [Int] = [23,11,0,0,11, 44,0,16]

print(arr)



/*
/// Sorted function **********
///
/// sepcify expression for $0 and $1 ( or val1 and val2 )
/// if expression is true, then keep val1 before val2 ( DO NOT CHANGE.. 
/// Otherwise, if FALSE
/// INTERCHNAGE
/// 
/// Rule Summarized:  IF expression FALSE, CHANGE val1 and val2
///  TRUE means val1 should be before val2



var x = arr.sorted() {
  (val1:Int, val2:Int) -> Bool    in
  
  if val2 == 0 {
    return true
  } else {
    return false
  }
  
}



print(x)

*/





var y = arr.sorted {
  
  val1, val2 in
      return val2 == 0
  
}


print(y)






