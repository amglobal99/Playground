//: [Previous](@previous)

import Foundation
import SwiftyJSON


/// Example of using SwiftyJSON
/// Various techniques are demonstrtaed here



      struct User {
        
            let id: Int
            let title: String
            let userid: Int
            //let completed: Bool
            
            init?(json: [String: Any]) {
              guard
                  let id = json["id"] as? Int,
                  let title = json["title"] as? String,
                  let userid = json["userId"] as? Int
              else {
                  return nil
              }
              
              self.id = id
              self.title = title
              self.userid = userid
            } // end init
        
      } // end struct





    // This was added to suppress some error that Playground gave
    URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)


      //let urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
      let urlString = "https://jsonplaceholder.typicode.com/todos"
      // let urlString = "https://api.flickr.com/services/rest"
     // let urlString = "http://citibikenyc.com/stations/json"





      if let url = URL(string: urlString), let data = try? Data(contentsOf: url)   {
        
              // create JSON object
              let json = JSON(data: data)
              print("*************************************\n\n")
              // debugPrint(json)
        
        
              // get an Array of JSON objects
        var arr: [JSON]  = json.arrayValue
              //for i in arr {
                //print(i)
              //}
        
               var first = arr[0]
               //print(first)
              

        
              //var b = arr.map { $0["id"] }
              // print(b)
        
        
        
              // create a USEr object
              if let firstDict: [String:Any] = first.dictionaryObject {
                  if let  us = User(json: firstDict) {
                     print(us)
                  }
              }
              
        
        
        
              // Let's try to map entire array
        
        
               // create a new arary
        var newArr:[ [String:Any] ] = [ ]
        
        for x in arr {
          if let dict1 = x.dictionaryObject {
              newArr.append(dict1)
          }
          
        }
        
        //print(newArr)
        
        
        var users: [User] = []
        
        users = newArr.flatMap {  User.init(json: $0) }
        
        print(users[0])
        
        
        
        
        
      } // end if



























//: [Next](@next)
