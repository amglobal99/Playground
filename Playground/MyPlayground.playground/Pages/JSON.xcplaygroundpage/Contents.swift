//: [Previous](@previous)

import Foundation
import UIKit
import XCPlayground






/*
func readJSONObject(object: [String: AnyObject])  {
    
    guard
        let title = object["dataTitle"] as? String,
        let version = object["swiftVersion"] as? Float,
        let users = object["users"] as? [[String: AnyObject]]
    else {
        return
    }
    
    
    for user in users {
        
        guard
            let name = user["name"] as? String,
            let age = user["age"] as? Int
        else {
            break
        }
        
        switch age {
        case 22:
            _ = name + " is \(age) years old."
        case 25:
            _ = name + " is \(age) years old."
        case 29:
            _ = name + " is \(age) years old."
        default:
            break
        }
    }  // end for loop
    
    
}  // end function

*/




/*
func convertJSONObject(object: [String: AnyObject])  {
    
    print("converting ....")
    
    
    var totalArray = [String:[String]]()
    var tempArray = [String]()
    
    guard
        let _ = object["dataTitle"] as? String,
        let _ = object["swiftVersion"] as? Float,
        let users = object["users"] as? [[String: AnyObject]]
   
        else {
            print("returning ")
            return
    }  // end guard
    
    
    
    for user in users {
        
        print("processing user ...")
        
        guard
            let name = user["name"] as? String,
            let section =  user["section"] as? String
        else {
                break
        }
        
                tempArray.append(section)
        
    
        
        
    
    }  // end for loop
    
    
    var mySections = Array(Set(tempArray))
    
    
    print (tempArray.count)
    
    
print(tempArray)
    
    
    
}  // end function

*/








        func getKeyArrayFromJSON(rootElement:String?, key:String, jsonObject: [String: AnyObject]) -> [String]? {
            
            print("getKeyFromArray ...... stating")
            
            
            var tempArray = [String]()   // create empty array
           var objects:[ [String:AnyObject]]?
            
            
            
            if rootElement != nil {
                
                print ("not nil")
                
                guard
                    
                    let objects = jsonObject[rootElement!] as? [[String: AnyObject]]
                   // let users = jsonObject["countries"] as? [[String: AnyObject]]
                else {
                    print("is nil...")
                    fatalError("messed up ..")
                    return nil
                }
            
            
            } else {
                let objects = jsonObject
            }
          
             print("Executing main sectin")
          
          
          if let objects = objects {
            print("valid objects ")
          } else {
            print("Not valid objects")
          }
          
          
          
                for user in objects! {
                    
                    print("loop")
                    guard
                        let key = user[key] as? String
                    else {
                        break
                    }
                    tempArray.append(key)
                }  // for users
            
            
                // return array
                return Array(Set(tempArray)  )
                
            }  // end function






func getDictionaryFromJson(rootElement:String, categoryElement: String, valueElement :String, jsonObject: [String: AnyObject]) -> [String:[String]]?  {
    
                var finalDictionary = [String:[String]]()
                var keyArray:[String] = getKeyArrayFromJSON(rootElement: rootElement, key: categoryElement, jsonObject: jsonObject)!
                print(keyArray)
            
                print ("key1: \(categoryElement) \n key2: \(valueElement)")
            
                var tempArr = [String]()   // temporary storage
                
                for item in keyArray {  // Process each section
                         guard
                            let users = jsonObject[rootElement] as? [[String: AnyObject]]
                         else {
                            return nil
                        }
                   
                        // process all items and check for items that match item
                         for user in users {
                            var val1 = user[categoryElement] as? String
                            var val2 = user[valueElement] as? String
                            if val1 == item {
                                tempArr.append(val2!)
                            }
                        }

                            // Now add an entry to our final Dictonary
                            finalDictionary.updateValue(tempArr, forKey: item)
                    
                            // clear array
                            tempArr.removeAll()
                        
                    }// item in keyArray
 
                    // Return the final Dictionary
                    return finalDictionary
                
            }  // end funtion



/*

//  ********************** MAIN LOOP ****************************************************************

                print("Starting .....")

           // let urlStr = "https://api.github.com/users/amglobal99/repos"
           // let urlStr = "https://jsonplaceholder.typicode.com/todos"

                do {
                    /*
                    let session:URLSession = {
                    let config = URLSessionConfiguration.default
                    return URLSession(configuration: config)
                    } ()
                    */
                     let session = URLSession.shared
                    let url = URL(string:"https://jsonplaceholder.typicode.com/todos" )
                    var urlRequest = URLRequest(url: url!)
                    let response:URLResponse?
                    //urlRequest.httpMethod = "GET"
                
            print("starting Task")
                
                let task = session.dataTask(with: urlRequest)
                
                {  ( data, response, error) -> Void in
                    if data != nil {
                        if let jsonData = data {
                            do {
                                /*
                                if let  dataString = String(data: data!, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))   {
                                    print(dataString)
                                } // dataString
                                */
                            
                                   let object = try JSONSerialization.jsonObject(with: jsonData, options: [])
                                    print (object)
                             
                            } catch {
                                
                            }
                        } //jsonData = data
                    } // data != nil
                    
                } /// end closure
                
                
                
                task.resume()
                
                
                print("after")
                XCPlaygroundPage.currentPage.needsIndefiniteExecution = true
                
             
                
            } catch {
                print("error")
            }



*/






















//  ********************************************************************************************************







//  ********************** MAIN LOOP *************  WORKING  COPY***************

print("Starting .....")

let url = Bundle.main.url(forResource: "data", withExtension: "json")

do {
    let data = try Data(contentsOf: url!)
    let object = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
  
    print("\n\n *********** Printing JSON object *****************\n\n")
  
    print(object)
    
    
    print("\n\n ****************************\n\n")
  
  
      
      
      
  if let dictionary = object as? [String: AnyObject] {
        
        print("everything ok...")
        
        //readJSONObject(object: dictionary)
        //convertJSONObject(object: dictionary)
        //var myKeyArray:[String] = getKeyArrayFromJSON(key: "section", object: dictionary)!
        //print(myKeyArray)
        
    
    
    
    //    var keyArray:[String] = getKeyArrayFromJSON(rootElement: nil, key: "section", jsonObject: dictionary)!
      //  print(keyArray)

    
        
        
        
    
    
    /*
     var dict:[String:[String]] =  getDictionaryFromJson(rootElement:"users", categoryElement: "section", valueElement: "name", jsonObject: dictionary)!
     
     print(dict)
     
     */
    

    
    
    
    
    
    } else {
        print("vvvv")
    }
    
    
    
} catch {
    print("error")
}





//  ************************************************************************************










//: [Next](@next)
