//: [Previous](@previous)

import Foundation
import UIKit


// =============================================================

class Person {
    
    let name: String
    var apartment:Apartment?

    
    init(name:String) {
        self.name  = name
        print("PErson class is being initialized")
    }
    
    
    deinit {
        print("Person class is being DEINITIALIZED")
    }
    
}  // end class



class Apartment {
    
    let unit:String
    weak var tenant:Person?

    
    init(unit: String) {
        self.unit =  unit
        print("Apartment is being Initialized")
    }
    
    
    deinit{
        print("Apartment is being DEINIT")
    }
    
}



// ============== end classes ==================================




/*
var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "Johnny Appleseed")

reference2 = reference1
reference3 = reference1

reference2 = nil
reference1 = nil
reference3 = nil

*/


var john: Person?
var unit4A: Apartment?

print("++++++++++ Creating Perosn class ++++++++++++")
john = Person(name: "Johny Appleseed")
print("---------- Creating Apartment class ------------")
unit4A = Apartment(unit: "4A")


john!.apartment = unit4A
unit4A?.tenant = john


dump(john)



print("++++++++++ Setting Person class to nil+++++++++++++++")
john = nil
print("+++++++++++setting Apetment to nil ++++++++++++++++++++++")
unit4A = nil









//: [Next](@next)
