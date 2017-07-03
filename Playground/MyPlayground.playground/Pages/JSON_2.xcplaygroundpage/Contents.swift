//: [Previous](@previous)

import Foundation
import SwiftyJSON









// ******************* Example 5 .... using nil and Optionals to handle errors ***********************
if let url2 = Bundle.main.url(forResource: "foo", withExtension: "txt")   {  // get the String
  if let content = try? String(contentsOf:url2) {  // encode the String
    
    if let data = content.data(using: String.Encoding.utf8)  {
      let json = JSON(data: data)    // Create a JSON object
      print("*************************************************************")
      print(json)
      print(json["users"][0] )
    }
    
  } else {
    print("Example 5 : .. this one is Nil")   // value is nil
  }
  
}  // end if








// ******************** Example 6 **************************************************************

// define a string to hold your JSON
let jsonNew = "{ \"people\": [{ \"firstName\": \"Paul\", \"lastName\": \"Hudson\", \"isAlive\": true }, { \"firstName\": \"Angela\", \"lastName\": \"Merkel\", \"isAlive\": true }, { \"firstName\": \"George\", \"lastName\": \"Washington\", \"isAlive\": false } ] }"

if let data = jsonNew.data(using: String.Encoding.utf8)  {  // Encode string
  let json = JSON(data: data)   // create JSON object
  print("\n\n ********************************************")
  for item in json["people"].arrayValue {
    print(item["firstName"].stringValue)
  }
}















//: [Next](@next)
