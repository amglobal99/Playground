//: [Previous](@previous)


// ........ OPTIONALS ......

import Foundation
import UIKit



var myString:String?

myString = "Hello World here"



      if let yourString = myString, yourString.characters.count > 5 {
        print(yourString)
    } else {
        print ("no \n")
    }


print("**********************************\n\n\n")




var str1:String
var str2:String?

str1 = "jesso"
str2 = "Thx oooo"


print(str1)
print(str2)
print(str2!)

print("*****************************")



if let myVar  = str2 {
    print ("Optional value is present  \n")
} else {
    print("this is nil \n **************************")
}






 var hobby:String!
// hobby = "mima"
 
 
 if let jack = hobby {
 print (jack)
 }else {
 print("Jack variable is nil \n ******************************* \n")
 }
 






class Person: NSObject {
    
    var name: String
    var city: String?
    var state: String
    
    init(name: String, city: String?, state: String) {
        self.name = name
        self.city = city
        self.state = state
        super.init()
    }  //end init

}  //end class


var per:Person
per = Person(name:"Katie", city:nil, state:"MH" )
print(per.state)
print("**********************************")



//=============================================================


class Country {
    
    let name: String
    var capitalCity: City!
    
    init(name:String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
    
    deinit {
        print("Country being DEINT")
    }
    
}  //end class


class City {
    
    let name: String
    unowned let country: Country
    
    init (name: String, country: Country) {
        self.name = name
        self.country = country
    }
    
    
    
    deinit{
        print("City being DEINT")
    }
    
    
} //end class


var country: Country?

country = Country(name: "Canada", capitalName: "Ottawa")
print("\(country!.name)'s capital city is called \(country!.capitalCity.name)" )


country = nil





// ============ section 2 ==========================

//import Cocoa

var errorCodeString: String?
errorCodeString = "404 - Page Not Found \n"

if let theErr = errorCodeString {
    print(theErr)
} else  {
    print("Sorry it is nil \n")
}


let test = errorCodeString ?? "Nil Coas Error"

print("My let value is \(test)")


// ==================  end section 2===================



print("*******************************")

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}



var status: String?

if let status = getHaterStatus(weather: "rainy")  {
    print("Got a value \(status) ")
} else {
    print("It is a nillll")
}










//: [Next](@next)
