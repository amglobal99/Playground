//: [Previous](@previous)

import Foundation
import SwiftyJSON
import Alamofire


///  ++++++++++++++++++++++ SWIFTYJSON usage Examples ++++++++++++++++++++++++++


      // This was added to suppress some error that Playground gave
      URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)


      /// Example of using SwiftyJSON
      /// Various techniques are demonstrtaed here


        // Create a struct to hold our data objects
          struct Todo {
          
          let id: Int
          let title: String
          let userid: Int
          //let completed: Bool
          
          init?(_ json: [String: Any]) {
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






        // This is our URL
        let urlString = "https://jsonplaceholder.typicode.com/todos"
        //let urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"
        // let urlString = "https://api.flickr.com/services/rest"
        // let urlString = "http://citibikenyc.com/stations/json"


        // create an array to hold our objects
        var todos: [Todo] = []



        if let url = URL(string: urlString), let data = try? Data(contentsOf: url)   {
          
                // create JSON object
                let json: JSON = JSON(data: data)
          
               // print("\n\n ************************\n\n  \(json) ")
          
                // get an Array of objects.  what we get is an array of 'JSON' type objects
                var arr: [JSON]  = json.arrayValue
          
          
                // Let's convert our arrya of 'JSON' objects to an array of 'String:Any' dictionary objects.
                // so our new array will be ab Array container.
                // Within thta, you have individual Dictionary items ..  each of type 'String:Any'
                // To ilustrate, you wil have  [ DictionaryItem ] ... in Swift, we denote  [   [String:Any]  ]
                // This is a step you will do all the time in your projects
                // ***** Important *********
                //
                var newArr: [ [String:Any] ] = arr.flatMap { $0.dictionaryObject   }
          
          
                // create array of your data objects. We will use flatMap to remove nil items
                todos = newArr.flatMap {  Todo.init($0) }
            
            
                print(todos[0])
                print(todos[1])
                print(todos[2])
          
                print("We have \(todos.count)  data items")
          
        } // end if

















//: [Next](@next)
