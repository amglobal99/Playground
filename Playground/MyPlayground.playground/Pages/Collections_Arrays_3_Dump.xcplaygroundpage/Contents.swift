//: [Previous](@previous)

import Foundation



var myArray:[String] = []
var newArray = [String]()


var arr: [Int] = [23,11,0,0,11, 44,0,16]
var arr1:[String] = ["jack","jamie","pauline","kristi", "jamie","kara"]
var arr2:[String] = ["pau","kim","simi","carla","jack","bob","simi"]
var arr3:[Int] = [4,9,6,2,19,14,3,44,1,22]
var arr4:[Int] = [44,33,77,11,16]





/// ************** BUBBLE SORT ***********************

func bubble(arr:[Int] ) -> [Int] {
   
   var lastProcessed = arr.count - 1
   var temp:[Int] = arr
   
      repeat {
            for i in 0...(lastProcessed - 1) {
                  print("Last : \(lastProcessed)  and \(i)" )
                 if temp[i] > temp[i + 1] {
                  let tmp = temp[i]
                  temp[i] = temp[i + 1 ]
                  temp[i + 1] = tmp
               }
      }
         
        lastProcessed -= 1
      
      } while lastProcessed != 0
      
   
    return temp
   
} // end func






var tst = bubble(arr: [33,11, 45, 19, 66, 8,77])
















