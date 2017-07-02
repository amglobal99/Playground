//: [Previous](@previous)

import Foundation
import Alamofire
import SwiftyJSON


/*
/// First, we define a Dictionary
var dict:[Int:[String] ] = [:]
dict = [99:["f","j"],22:["e","d"],11:["w","d"],4:["a","u"] ]
print("Original Dictionary:" )
print(dict)
print("\n\n")
*/


/*

switch path.count {
case 1:
  let result = jsonObject[ (rootPath?[0])! ]
  completionHandler(Result.success(result))
case 2:
  let result = jsonObject[ (rootPath?[0])!,(rootPath?[1])! ]
  completionHandler(Result.success(result))
case 3:
  let result =  jsonObject[ (rootPath?[0])!,(rootPath?[1])!,(rootPath?[2])!    ]
  completionHandler(Result.success(result))
case 4:
  let result =  jsonObject[ (rootPath?[0])!,(rootPath?[1])!,(rootPath?[2])!, (rootPath?[3])!    ]
  completionHandler(Result.success(result))
default:
  completionHandler(Result.success(jsonObject))
}

*/



let rootPath = ["employees","users"]


let pathCount = rootPath.count


var pathString = ""

for i in 0..<pathCount {
  
  /*
  if i < (pathCount-1) {
      pathString += "(rootPath?[\(i)])!,"
    }else {
      pathString += "(rootPath?[\(i)])!"
  }
 
 
 */
  
  if i < (pathCount-1) {
    pathString += "\"" + rootPath[i] + "\","
  }else {
    pathString += "\"" + rootPath[i] + "\""
  }
  
  
 
 
}




print(pathString)








