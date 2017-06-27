//: [Previous](@previous)

import Foundation



var myArray:[String] = []
var newArray = [String]()


var arr: [Int] = [23,11,0,0,11, 44,0,16]
var arr1:[String] = ["jack","jamie","pauline","kristi", "jamie","kara"]
var arr2:[String] = ["pau","kim","simi","carla","jack","bob","simi"]
var arr3:[Int] = [4,9,6,2,19,14,3,44,1,22]
var arr4:[Int] = [44,33,77,11,16]




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
 

