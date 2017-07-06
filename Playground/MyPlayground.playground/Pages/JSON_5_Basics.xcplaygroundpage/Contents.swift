//: [Previous](@previous)

import Foundation
import SwiftyJSON





////Let's process a json string


let jsonString = "{ \"people\": [  { \"firstName\": \"Paul\", \"lastName\": \"Hudson\", \"isAlive\": true }, { \"firstName\": \"Angela\", \"lastName\": \"Merkel\", \"isAlive\": true }, { \"firstName\": \"Aamir\", \"lastName\": \"Nelson\", \"isAlive\": false }, { \"firstName\": \"Becky\", \"lastName\": \"Smith\", \"isAlive\": true }, { \"firstName\": \"Carly\", \"lastName\": \"Johnson\", \"isAlive\": false }, { \"firstName\": \"Bobby\", \"lastName\": \"Mehta\", \"isAlive\": true }, { \"firstName\": \"George\", \"lastName\": \"Washington\", \"isAlive\": false } ] }"



  // First check if string is encoded correctly
  if let data: Data = jsonString.data(using: String.Encoding.utf8)   {
    
        // create a JSON object from the string
        let json = JSON(data: data)
    
        // convert JSON object to array of JSON objects
        let jsonArr = json["people"].arrayValue
        print(jsonArr)
    
    
        // now let's get array of lastNames
        var lnames = jsonArr.map{ $0["lastName"].stringValue    }
    
        print(lnames)
    
    
    
    
    }  //end if


























//: [Next](@next)
