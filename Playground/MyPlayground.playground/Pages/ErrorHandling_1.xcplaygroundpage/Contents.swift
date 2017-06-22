//: [Previous](@previous)

import Foundation

enum myError : Error {
    case DivisionError(msg: String)
    case JackError
    case InvalidItem(str:String)
}




/*

func divide(a: Int, b: Int)  throws  -> Int {
    print("starting divide method")
    
   
    if b == 0 {
        throw myError.DivisionError(msg: "Sorry Buddy.... no luck")
    }
    
    
    print("Will attempt to divide")
        var res: Int = a/b
        print("Got the result")
        return res
}


func printArray( teams:[String]) throws -> Int {
    for i in 1...2 {
        print (teams[i])
    }
    print("*************************************************")
    
         //let result = try divide(a:50, b: 5)
        let result = try divide(a: 50, b: 0)
    print("returning result from printArray")
    return result
}



/// ********* Main Code **********************
        do {
            var myTeams: [String] = ["Falcons","Jaguars","Braves"]
            
            var cnt = try printArray(teams: myTeams)
            /*
            if let cnt = try? printArray(teams: myTeams) {
                print ("value returned is "  + String(cnt)  )
            }else {
                print("value is nil")
            }
            */
            
           
           
        } catch myError.DivisionError(let msgs) {
            print("An error occurred:  \(msgs) \n *********************************************************\n")
        
      
            
        
        } catch  let error as NSError{
             print("My Error is : \(error.debugDescription)")
        }





// *******************   end Example #1 **************************




*/






/*


 // ********************* Example # 2 ****************************************************************************

do {
    let str = try NSString(contentsOfFile: "Foo.bar",   encoding: String.Encoding.utf8.rawValue)
//}catch (let error as NSError)  {
  //  print("*************************************************************")
    // print(error.debugDescription)
} catch {
    print("Example 2: Error: \(error.localizedDescription) ")
}



// ****************** Example #2a *****************************************************
// In this example, I will convert a standard String ( no connection to Foundaton) to a NSError
// If this is working, so then I should convert all my errors to NSerror so I can get more details
do {
    let str = try String(contentsOfFile: "Foo.bar",   encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
}catch (let error as NSError)  {
      print("*************************************************************")
      print("Debug Desc:  \(error.debugDescription) ")
        print("code:  \(error.code) ")
        print("Domain:  \(error.domain) ")
        print("LocalizedcDesc:  \(error.localizedDescription) ")
        print("LOcalized Failure:  \(error.localizedFailureReason) ")
        print("Description:  \(error.description) ")
}




// ******************* Example #2b ***************************************************



*/








// ******************* Example 3 .... using nil and Optionals to handle errors ***********************

if let plays = try? String(contentsOfFile:"foo.bar") {
    print("*************************************************************")
    print("I got a value which is: \(plays)")      // value is nOT nil
} else {
    print("*************************************************************")
    print("Example 3 : .. this one is Nil")   // value is nil
}

 





 
 
 /*

// ******************* Example 4 .... using nil and Optionals to handle error ***********************

let url = Bundle.main.url(forResource: "data", withExtension: "json")
if let plays = try? Data(contentsOf: url!) {
    print("*************************************************************")
    print("Example 4: I got a value which is: \(plays.count)")    // value is nOT nil
} else {
    // value is nil
    print("Darn .. this one is Nil")
}



// ******************* Example 5 .... using nil and Optionals to handle errors ***********************
let url2 = Bundle.main.url(forResource: "foo", withExtension: "txt")
if let content = try? String(contentsOf:url2!) {
    print("*************************************************************")
    print("I got a value which is: \(content)")      // value is nOT nil
} else {
    print("Example 5 : .. this one is Nil")   // value is nil
}





*/








//: [Next](@next)
