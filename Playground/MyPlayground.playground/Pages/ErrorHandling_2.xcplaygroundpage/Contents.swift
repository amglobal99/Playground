//: [Previous](@previous)

import Foundation

enum MyError : Error {
    case DivisionError(dMsg: String)
    case JackError(errMsg:String)
    case InvalidItem(str:String)
}

var hobbies: [String] = ["sports","music","fashion","travel","cooking"]


func f1GetPersonDetails() throws -> String  {
    print("starting f1")
    print("    Calling f2 method")
    let  details = try f2GetHobbyAndAge(hobby: "cooking")
    
    print("Completed f2 call")
    
    print("  Value of details is : " + details)
    var tempArray: [String] = [String]()
    tempArray.append("Jack")
    tempArray.append("Pauline")
    tempArray.append("Kara")
    
    print("   f1 - Returning : " + tempArray[2])
    return tempArray[2]
}


func f2GetHobbyAndAge (hobby:String)  throws  -> String {
    print("Starting f2")
    print("    calling f3 method ")
    
        let age = try f3GetAge(num: 200)
    
    print ("Completed f3 call")
    
    let  hob = hobbies[2]
    let  hobAge = hob + "-" + String(age)
    print("   f2 - Returning " + hobAge)
    return hobAge
}

func f3GetAge (num:Int) throws  -> Int {
        print("Starting f3")
        if num >= 200 {
            throw MyError.JackError(errMsg: "You made a mistake .... please check !!")
        }
        let x = num/5
        print ( "   f3 - Returning : " + String(x))
        return x
}








//************************** MAin Section ******************************

print(".....STARTING MAIN...\n")
        do {
            let  test = try f1GetPersonDetails()
            print("     Value of  test is " + test )
        } catch MyError.JackError(let errorMEssage)  {
            print(errorMEssage)
        } catch {
                print("Something went wrong ..: Error was -  "  )
                //print ( myError.JackError(errMsg: <#T##String#>))
        }

print("\n.....DONE PROCESING MAIN..")


//***********************************************************************



//: [Next](@next)
