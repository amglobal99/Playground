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





    /// OPtion I ..... get Data from URL


      if let url = URL(string: urlString), let data = try? Data(contentsOf: url)   {
        
              // create JSON object
              let json = JSON(data: data)
        
              print("\n\n *************************************\n\n  \(json) ")
        
              // get an Array of objects.  what we get is an array of 'JSON' type objects
              var arr: [JSON]  = json.arrayValue
        
        
        
        
              // Let's try to map entire array
        
        /*
              // create a new array
              var newArr:[ [String:Any] ] = [ ]
              
              for x in arr {
                if let dict1 = x.dictionaryObject {
                    newArr.append(dict1)
                }
              } // end for
              
              //print(newArr[0])
        
        */
        
        
        
            // Let's convert our arrya of 'JSON' objects to an array of 'String:Any' dictionary objects.
            // so our new array will be ab Array container.
            // Within thta, you have individual Dictionary items ..  each of type 'String:Any'
            // To ilustrate, you wil have  [ DictionaryItem ] ... in Swift, we denote  [   [String:Any]  ]
            // This is a step you will do all the time in your projects
            // ***** Important *********
            //
            var newArr: [ [String:Any] ] = arr.flatMap { $0.dictionaryObject   }
        
        
        
        
            
            todos = newArr.flatMap {  Todo.init($0) }
            print(todos[0])
            print(todos[1])
        
        
        
        
        
      } // end if













/// Option II ........ use Alamofire to get the JSON



// MARK: - Methods


      ///   This function gives as a SwifyJSON  'JSON' object
      ///    The results are placed in the Result variable
      ///
      ///   The rootpath is the path to your JSON entries.
      ///   For example, if my data is under 'employees' root attribute
      ///   and within that, it is under the 'users' attribute
      ///   Then your array will contain ["employees","users"]
      ///
      ///     - Parameter url:  A URL object for your REST API
      ///     - Parameter rootPath: The root path for your JSON object
      ///
      ///     - Returns: Nothing


/*

      func getJSONObject(for url:URL, rootPath:[String]?, completionHandler:  @escaping  (Result<JSON>) ->  Void    ) {
        
        // For some reason, this is needed to suppress and error in Playground
        URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)
        
        NSLog("getJSONObject: Started Execution")
        let urlRequest = URLRequest(url: url)
        
        NSLog("getJSONObject: url is \(url) ")
        NSLog("getJSONObject: Sending Alamofire request ")
        
        
        // Send Alamofire request
        Alamofire.request(urlRequest)
          .responseJSON
          { response  in
            // First check if user Authenticated
            //..........
            
            NSLog("getJSONObject: Got result back")
            
            // Check if an Error is present
            guard response.result.error == nil else {   // got an error
              NSLog(response.result.error! as! String)
              completionHandler(Result.failure(response.result.error!) )
              return
            }
            
            // check if result value is present
            guard response.result.value != nil else {  // Data is nil
              NSLog("Request did not return any data")
              return
            }
            
            // Optional ...You can also test the status code
            guard response.response?.statusCode  == 200  else {  // Data is nil
              NSLog("Response status code is not 200")
              return
            }
            
            // Everything look ok
            
            
            // First, let's print the esponse
            //print("\n\n*********************** RESPONSE ****************************\n")
            // debugPrint(response)
            //print("\n ************************ END RESPONSE ********************\n\n\n\n")
            
            //convert Response to SwiftyJSON object
            let jsonObject:JSON  = JSON(response.result.value!)
            
            //print("\n\n\n ++++++++++ JSON object +++++++++++++++++")
            //print(jsonObject)
            //print(" ++++++++++++++++++ end JSON object +++++++++++")
            
            
            if let path = rootPath { // rootPath is not Nil
              print("\n\nPath is \(path) " )
              let nodeCount = path.count  // How many levels deep ? ( for example, ["employees","users"] is 2 levels
              var pathString = ""
              
              for i in 0..<nodeCount {
                if i < (nodeCount-1) {
                  pathString += path[i] + ","
                }else {
                  pathString += path[i]
                }
              }
              
              print("Pathstring: \(pathString) \n\n")
              let result = jsonObject[ pathString ]
              //print("\n\n\n ++++++++++ final object +++++++++++++++++")
              //print("result is \(result)")
              // print(" +++++++++++++++++++++++++++++++++++++++++\n\n")
              completionHandler(Result.success(result))
              
            } else {  // rootPath is nil
              completionHandler(Result.success(jsonObject))
            }
            
            
            // XCPlaygroundPage.currentPage.finishExecution()
            
            
        }  // end Alamofire request
        
      } // end function



*/









/*




      class Test {
        
        // store JSON object in this variable
        var jsonResultObject:JSON?
      
        // create var to store array of Todos
        var todos: [Todo] = []
        
        
        
        
            func getTodosFromJson (urlString: String)  {
              
                  guard let url = URL(string: urlString) else {
                  return
                  }
                  
                  
                  // ********  Completion Handler *************
                  
                  let completionHandler: (Result<JSON>) -> Void  =
                    
                  { [weak self] result in
                    
                    guard let strongSelf = self else {
                      return
                    }
                    
                    strongSelf.jsonResultObject = result.value   // set the value for local variable
                    
                    if let jsonObj = strongSelf.jsonResultObject {
                          print("\n\n\n ++++++++  Final Object +++++++++++ ")
                          //print(jsonObj)
                          print(" ++++++++ end final object +++++++++++ \n\n\n")
                          
                      
                          /// LET'S CONVERT THIS JSON INTO OUR OBJECTS
                          var newArr:[ [String:Any] ] = [ ]
                          //var todos: [Todo] = []
                          
                          
                          // get an Array of JSON objects
                          var arr: [JSON]  = jsonObj.arrayValue
                          
                          
                          // create Dictionary object for each item in array
                          for x in arr {
                            if let dict1 = x.dictionaryObject {
                              newArr.append(dict1)
                            }
                          } // end for
                          
                          //print(newArr[0])
                          
                          strongSelf.todos = newArr.flatMap {  Todo.init($0) }
                          print(todos[0])
                      
                    } // end if
                    
                  } // end closure
                  
            
              
              
              

            
            } // end func
            
        
        
        
        
      } // end class








      /// MAIN CODE


      var tester = Test()


*/








//: [Next](@next)
