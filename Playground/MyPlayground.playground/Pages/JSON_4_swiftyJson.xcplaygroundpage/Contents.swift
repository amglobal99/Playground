//: [Previous](@previous)

import Foundation
import SwiftyJSON


/// Example of using SwiftyJSON


    // This was added to suppress some error that Playground gave
    URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)


      let urlString = "https://api.whitehouse.gov/v1/petitions.json?limit=100"

     // let urlString = "https://jsonplaceholder.typicode.com/todos"


if let url = URL(string: urlString), let data = try? Data(contentsOf: url)   {
        
              let json = JSON(data: data)
             // print("JSON object:  \n  \(json) ")
                 print ( json["metadata"])
                 print("*************************************\n\n")
                  print(json)
      
      
      
          
                if json["metadata"]["responseInfo"]["status"].intValue == 200 {
                  // we're OK to parse!
                  
                  
                  
                  
                  
                }
      }



























//: [Next](@next)
