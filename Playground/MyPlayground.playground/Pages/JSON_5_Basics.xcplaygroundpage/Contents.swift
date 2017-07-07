//: [Previous](@previous)

import Foundation
import SwiftyJSON
import Unbox
import Wrap


/// ================ Use of SwiftyJSON ==================================

/// ==============  USe of Unbox and Wrap libraries =====================



////Let's process a json string. This is a pure text string


let jsonString = "{ \"people\": [  { \"firstName\": \"Paul\", \"lastName\": \"Hudson\", \"isAlive\": true }, { \"firstName\": \"Angela\", \"lastName\": \"Merkel\", \"isAlive\": true }, { \"firstName\": \"Aamir\", \"lastName\": \"Nelson\", \"isAlive\": false }, { \"firstName\": \"Becky\", \"lastName\": \"Smith\", \"isAlive\": true }, { \"firstName\": \"Carly\", \"lastName\": \"Johnson\", \"isAlive\": false }, { \"firstName\": \"Bobby\", \"lastName\": \"Mehta\", \"isAlive\": true }, { \"firstName\": \"George\", \"lastName\": \"Washington\", \"isAlive\": false } ] }"





         // let's define our data object
         struct User {
            let fName: String
            let lName: String
            let isAlive: Bool
            
         } // end struct

         extension User: Unboxable {
            init(unboxer: Unboxer) throws {
               self.fName = try unboxer.unbox(key: "firstName")
               self.lName = try unboxer.unbox(key: "lastName")
               self.isAlive = try unboxer.unbox(key: "isAlive")
            }
         }



         func processJSON(str: String) {
            
               guard let data = str.data(using: String.Encoding.utf8) else {
                  return
               }
               
               // create a JSON object from the string
               let json = JSON(data: data)
               
               // convert JSON object to array of JSON objects
               let jsonArr = json["people"].arrayValue
               //print(jsonArr)
               
            
               // convert array into Dictionary array
               let dict = jsonArr.flatMap{ $0.dictionaryObject }
               print(dict)
            
            
               // let's convert our JSON into User objects
               users = dict.flatMap {
                     val -> User? in
                           do {
                               return  try unbox(dictionary: val)
                           } catch{
                                return nil
                           }
               } // end flatmap
            
            
               print(users.count)
               print(users[1])
            

      } // end func









/// ====================  MAIN SECTION ======================

var users : [User] = []

processJSON(str: jsonString)



 /// ============== USAGE OF WRAP LIBRARY ========================
// Let's serialize one of our User objects
// i.e. convert object to a Dictionary   ( SERIALIZE )

let myDict: [String : Any] = try wrap(users[0] )
print(myDict)




















//: [Next](@next)
