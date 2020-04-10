//: [Previous](@previous)

import Foundation
import SwiftyJSON
import Alamofire
//import XCPlayground
import PlaygroundSupport


//XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
PlaygroundPage.current.needsIndefiniteExecution = true






struct Constants {

    
  struct Configuration {
  
            static let companyName = "Natsys International"
            static let companyAddress = "1808 Mountain Lake Dr GA 30339"
            
    
            enum TestSite {
              
              init?(rawValue: String){
                switch rawValue{
                case "FLICKR":
                  self = .flickr
                case "GITHUB":
                  self = .github
                case "BIKENYC":
                  self = .bikenyc
                case "GOOGLE":
                  self = .google
                case "TYPICODE":
                  self = .typicode
                default:
                  return nil
                }
              }
              
              case flickr
              case github
              case bikenyc
              case google
              case typicode
              
              
              var urlString:String {
                switch self {
                case .flickr:
                  return "https://api.flickr.com/services/rest"
                case .github:
                  return  "https://api.github.com/users/amglobal99/repos"
                case .bikenyc:
                  return "http://citibikenyc.com/stations/json"
                case .google:
                  return "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=8&q=http%3A%2F%2Fnews.google.com%2Fnews%3Foutput%3Drss"
                case .typicode:
                  return "https://jsonplaceholder.typicode.com/todos"
                }
              }
              
              var apiKey: String?  {
                switch self {
                case .flickr:
                  return "a6d819499131071f158fd740860a5a88"
                case .github:
                  return nil
                case .bikenyc:
                  return nil
                case .google:
                  return nil
                case .typicode:
                  return nil
                }
              }
              
              var method: String?  {
                switch self {
                case .flickr:
                  return "flickr.photos.getRecent"
                case .github:
                  return nil
                case .bikenyc:
                  return nil
                case .google:
                  return nil
                case .typicode:
                  return nil
                }
              }
              
              var params: [String:String]?  {
                switch self {
                case .flickr:
                  return ["extras":"url_h,date_taken"]
                case .github:
                  return nil
                case .bikenyc:
                  return nil
                case .google:
                  return nil
                case .typicode:
                  return nil
                }
              }
              
              var rootPath: [String]?  {
                switch self {
                case .flickr:
                  return ["photos","photo"]
                case .github:
                  return nil
                case .bikenyc:
                  return ["stationBeanList"]
                case .google:
                  return ["responseData","feed","entries"]
                case .typicode:
                  return nil
                }
              }
              
              var key: String?  {
                switch self {
                case .flickr:
                  return "datetakenunknown"
                case .github:
                  return "id"
                case .bikenyc:
                  return "statusKey"
                case .google:
                  return "author"
                case .typicode:
                  return nil
                }
              }
              
              var dataKey: String?  {
                switch self {
                case .flickr:
                  return "id"
                case .github:
                  return "clone_url"
                case .bikenyc:
                  return "statusValue"
                case .google:
                  return "title"
                case .typicode:
                  return nil
                }
              }
              
              
          } // end enum




    } // end Configuration struct



}  // end Constants struct








        // MARK: - Json Methods


          
          // Define empty protocol
          protocol JsonConvertible {}



  
    // MARK: - Extensions
  
    // define an extension
    extension JsonConvertible  {
    
    
    
    
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
          
          
          func getJSONObject(for url:URL, rootPath:[String]?, completionHandler:  @escaping  (Result<JSON>) ->  Void    ) {
            
                  // For some reason, this is needed to suppress and error in Playground
                  URLCache.shared = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)

                  NSLog("getJSONObject: Started Execution")
                  let urlRequest = URLRequest(url: url)
                  
                  //NSLog("getJSONObject: url is \(url) ")
                  NSLog("getJSONObject: Sending Alamofire request ")
                  
                  
                  // Send Alamofire request
                  Alamofire.request(urlRequest)
                    .responseJSON
                    { response  in
                     
                     
                     
                           NSLog("getJSONObject: Got result back")
                                          
                          // Check if an Error is present
                          guard response.result.error == nil else {   // got an error
                            NSLog(response.result.error! as! String)
                            completionHandler(Result.failure(response.result.error!) )
                            return
                          }
                          
                          // check if result value is present
                          guard let myResult = response.result.value  else {
                            NSLog("Request did not return any data")
                            return
                          }
                     
                     
                           /*
                                // Optional ...You can also test the status code
                                guard response.response?.statusCode  == 200  else {
                                  NSLog("Response status code is not 200")
                                  return
                                }
                           */
                           
                     
                          // Everything look ok. Proceed ....
                          
                          
                          // First, let's print the esponse
                          //print("\n\n*********************** RESPONSE ************************\n")
                          //debugPrint(response)
                          //print("\n ************************ END RESPONSE ********************\n\n\n\n")
                          
                          //convert Response to SwiftyJSON object
                          let jsonObject:JSON  = JSON(myResult)
                     
                          
                         //print("\n\n\n ++++++++++ JSON object +++++++++++++++++")
                         //print(jsonObject)
                         //print(" ++++++++++++++++ end JSON object +++++++++++")
                         
                          
                          if let path = rootPath { // rootPath is not Nil
                                print("\n\nPath is \(path) " )
                                let nodeCount = path.count
                                 // How many levels deep?(for example, ["employees","users"] is 2 levels
                                 // we need to get to our array
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
                           
                                print("\n\n\n ++++++++++ final object +++++++++++++++++")
                                //print("result is \(result)")
                                print(" +++++++++++++++++++++++++++++++++++++++++\n\n")
                           
                                completionHandler(Result.success(result))
                            
                          } else {  // rootPath is nil
                                 print("\n\n\n ++++++++++ final object +++++++++++++++++")
                                 print(jsonObject)
                                 print(" +++++++++++++++++++++++++++++++++++++++++\n\n")
                                completionHandler(Result.success(jsonObject))
                          }
                          
                          
                         // XCPlaygroundPage.currentPage.finishExecution()
                          
                      
                  }  // end Alamofire request
            
          } // end function
          
          
    
    
    
  
    
        /**
         This function gives us an array of key values.
         We can use this function with a basic json array
         or an array which is 1 level deep
         
         For example, let's say we have "employees" as root, and within that
         we have {"id":2,"name":"john"}, ........
         That is an example of 1 level deep. Without employees, it is flat
         
         NOTE: To acces an array thta is at say 3 level, use this format
         for object in  jsonObject["responseData","feed","entries"].array!
         
         - Parameter jsonObject: This is the SwiftyJSON object
         - Parameter key:   The key that serves as the section title
         
         - Returns: An array of section title names
         */
        
        func getSectionTitlesArray(from jsonObject:JSON?,  key:String?) -> [String]? {
          guard let jsonObject = jsonObject, let key = key  else {
            return nil
          }
          let arrayNames:[String] = jsonObject.arrayValue.map({$0[key].stringValue})
          let result   = Array(Set(arrayNames)).sorted()   //Remove Duplicates
          return result
        } // end func
        
        
        
    
    
    
    
        // This functon will give us a Dictionary
        // For each key, we will return an array of values
        // For example, from my JSON, I want to categorize by City
        // So I want a Dictionary with City as key and an array as its values
        // param  obj :  This is the JSON object of type SwiftyJSON.JSON
        // param  key:  This is the key we want to categorize on
        // param rootAtribute:  Thisis the root element
        
        func getDictionary(from obj:JSON?, for key:String?, keyArray:[String]?, dataKey:String? ) -> [String:[String]]? {
          
          var keyItems:[String] = []
          var myDict:[String:[String]] = [:]   // Create a Dictionary to hold our data
          
          guard let obj = obj, let key = key, let keyArray = keyArray, let dataKey = dataKey else {
            return nil
          }
          
          print("getDictionary: Processing \(obj.count) objects. Key: \(key)  dataKey: \(dataKey) ")
          
          // For each key in keyArray, get all elements and create a Dictinary item
          for i in keyArray {
            for (_, things) in obj {
              // if things[key].string == i {
              if String(describing: things[key].rawValue) == i  {
                keyItems.append(things[dataKey].stringValue)
              }
            } // end for loop
            
            keyItems = Array(Set(keyItems)).sorted()   // Remove Duplicates .... may not be necessary
            myDict.updateValue(keyItems, forKey: i)   // add entry into Dictionary
            keyItems.removeAll()   // clear our holding array
          } // for i in keyArray
          
          return myDict   // Return value of Dictionary
          
        } // end func
        
    
    
    
    
        // Thid function will give us the array of values associated with a key
        //  For example, my Tableview needs all values for a particular section, say "teams"
        //  we just lookup the key "teams" in our dict and retrieve values for that key
        //  An array is returned
        //
        
        func getDictionaryValues(fromDictionary dict:[String:[String]]?, for key:String?) -> [String]? {
          
          guard let dict = dict, let key = key else{
            return nil
          }
          
          guard let result:[String] =  dict[key] else {
            return nil
          }
          
          return result
        }
        
        
        
    
    
        func getSiteURL(baseURLString:String, method: String?, parameters: [String:String]?, apiKey:String? ) -> URL? {
          
          guard  var components = URLComponents(string: baseURLString ) else {
            return nil
          }
          
          // check if we need to use method and apiKey
          if method != nil && apiKey != nil {
            var queryItems = [URLQueryItem]()
            let baseParams  = [
              "method": method,
              "format": "json",
              "nojsoncallback": "1",
              "api_key": apiKey
            ]
            
            for(key,value) in baseParams {
              let item = URLQueryItem(name: key, value: value)
              queryItems.append(item)
            }
            if let additionalParams = parameters {   // make sure parameters is not nil
              for (key, value) in additionalParams {
                let item = URLQueryItem(name: key, value: value )
                queryItems.append(item)
              } //end for loop
            } //end if
            
            components.queryItems = queryItems
          } // if method != nil
          
          
          guard let url = components.url else {
            return nil
          }
          
          return url
          
        } //end method
        

    
    
}   // end extension



         struct User {
            
            let id: Int
            let title: String
            let userid: Int
            //let completed: Int
            
            
            // Initializer
            init?(_ json: [String: Any]) {
               guard
                  let id = json["id"] as? Int,
                  let title = json["title"] as? String,
                  let userid = json["userId"] as? Int
                  //let completed = json["completed"] as? Bool
               else {
                     return nil
               }
               
               self.id = id
               self.title = title
               self.userid = userid
               //self.completed = completed
            } // end init
            
            
            
            
            /// Serialize your object. Convert Swift object to a Dictionary
            /// this will be used to post using Alamofire
            ///
            func serialize() -> [String:Any?] {
               
               var output: [String:Any]  = [ : ]
               
               output["id"] = id as Any?
               output["title"] = title as Any?
               output["userid"] = userid  as Any?
               //output["completed"] = completed  as Any?
               
               return output
            }
            
            
            
         }  // end struct






      // MARK: - Main Code











        class TestJSON: JsonConvertible {
         
           var jsonResultObject:JSON?
           let testSiteName = "TYPICODE"  // change to "FLICKR", "BIKENYC",  or "GITHUB" or "TYPICODE" if needed
           var users: [User] = []
      
         
            func main() {
              
                  // Get access to test site details
                  guard let testSite = Constants.Configuration.TestSite(rawValue: testSiteName) else {
                    return
                  }
                  
                  // =========== Completion Handler =====================
                  let completionHandler: (Result<JSON>) -> Void  =
                     { [weak self] result in
                           guard let strongSelf = self else {
                             return
                           }
                           if let myResult: JSON = result.value {
                                 //print(myResult)
                                 strongSelf.jsonResultObject = myResult   // set the value for local variable
                                 
                                 // get the array of JSON objects
                                 var jsonArr = myResult.arrayValue
                                 //  print(jsonArr)
                                 
                                 // convert each item to a Dictionary
                                 var dict: [[String:Any]]  = jsonArr.flatMap { $0.dictionaryObject   }
                                 //print(dict)
                              
                                 // convert all items to User objects
                                 var users: [User] = dict.flatMap{ User.init($0)   }
                                 print("\n\n++++++++++++++++++++++++++++++++++++")
                                 print(users.count)
                                 print(users[2])
                           } // end if
                        
                     } // end closure
        
               
                  // get the URL
                  guard let url = getSiteURL(baseURLString: testSite.urlString, method: testSite.method , parameters: testSite.params, apiKey: testSite.apiKey) else {
                    return
                  }
        
                  // Get the JSON object ( returns a SwiftyJSON object )
                  getJSONObject(for: url, rootPath: testSite.rootPath,   completionHandler: completionHandler)
        
            } // end main
        
   
   
         
         
              
                  func test2 () {
                      
                            NSLog("Starting test2 ......")
                      
                            // Get access to test site details for Row #2
                            guard let testSite = Constants.Configuration.TestSite(rawValue: testSiteName) else {
                              return
                            }
                      
                            guard let jsonObj = self.jsonResultObject  else {
                             print(" Object is nil.")
                             return
                             }
                      
                             NSLog("JSON object: \n \(jsonObj) "  )
                      
                            // get Section titles array ( key array)
                            guard let photoKeyArray =  getSectionTitlesArray(from: jsonObj, key: testSite.key)   else {
                              print(" photoKeyArray is nil.")
                              return
                            }
                            
                            print("\n\n++++++++   Section Titles Array ---> key: \(testSite.key) ++++++++++++")
                             print(photoKeyArray)
                             print("+++++++++++ +++++++++++++++++++++\n\n\n")
                             
                             // get Dictionary
                             guard let photoItemsDictionary = getDictionary(from: jsonObj,  for: testSite.key, keyArray: photoKeyArray, dataKey: testSite.dataKey)  else {
                             print("getKeyArray: PhotoItemsDictionary is nil.")
                             return
                             }
                             
                             print("\n\n+++++++++  Dictionary: Key: \(testSite.key!)  DataKey: \(testSite.dataKey!) ++++++++++++\n")
                             print(photoItemsDictionary)
                             print("\n++++++++++++++++++++++++++++++++++++++\n\n")
                      
                    }
                    
              

        } // end class
















    ////  ****************  EXECUTION Section **********************************


      var check = TestJSON()
      check.main()



      DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(15), execute: {
        // Put your code which should be executed with a delay here
         // check.test2()
        
      })



    // XCPlaygroundPage.currentPage.finishExecution()



   ///  ************************************************************************









//: [Next](@next)
