//: [Previous](@previous)

import Foundation


// *************** Calling a function that returns an Optional ********************

// This is crucial. Take  alook to see what happens when you have Optional
// methods etc.. that you have to deal with.


struct Politician {
    var color: String
    var height:Int
    
    init?(color:String, height:Int) {
        self.color = color
        self.height = height
    }
    
    
    // ======== Optional Mehods =================
    func getBalance(height:Int) -> Int? {
        let bal:Int? = getBal(height: height)
        return bal
    } // end func
    
    
    func getBal(height:Int) -> Int? {
        var bal:Int? = 0
        if height == 60 {
            bal = 1000
        }else if height == 50 {
            bal = 500
        } else {
            bal = nil
        }
        return bal
     }  // end func
    
  
}  // end struct



// =========  define a struct for Country ======================
struct Country {
    
    var name:String
    var pop:Int
    var pm: Politician?
    
    init(name:String,pop:Int,pm:Politician) {
        self.name = name
        self.pop = pop
        self.pm = pm
    }
    
    
    func getCityName(str:String) -> String?  {
        
        switch str {
        case "South":
            return "Madurai"
        case "North":
            return "Delhi"
        case "East":
            return "Kolkata"
        case "West":
            return "Pune"
        default:
            return nil
        } // end switch
    }  // end func
    
    
    
    func convertUpperCase(str:String) -> String? {
        var result:String?
        if str == "abc" {
            result = str.uppercased()
        } else {
            result = nil
        }
        return result
    }
    
    func printThis(str:String){
        print("you sent this string : \(str)")
    }
    
}  //end struct






var neta:Politician? = Politician(color:"black",height:40)
//var neta:Politician? = nil
var myCountry = Country(name:"India",pop:2000,pm: neta!)


// NOTE: on below line, pm is a property of myCountry.
// And it is an Ooptional.
// So you put a ? after that variable
//
// SO REMEMBER: When you are using any property, and thta property is optional, put ? after its name

// Additional Comments: 
// The last part is a method call to getBalance.
// This Method returns optional. You don't need to put ? after its name.
// You put the "?" after variable on left hand side.
// The value of the method will be assigned to var on left. To indicate it can be nil, place a "?"
// If you remove the ? after Int on left, you get an error

var netaBalance:Int? = myCountry.pm?.getBalance(height: 60)








//: [Next](@next)
