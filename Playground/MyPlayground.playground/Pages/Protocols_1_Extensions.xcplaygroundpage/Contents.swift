//: [Previous](@previous)

import Foundation
import UIKit

/*
// *****************  First you define a protocol and an extension ******************

protocol Actionable  {
    func eat() -> Void
    func hunt() -> Void
    //func makeNoise() -> Void   // You can add method such as makeNoise directly in the Extension
}

extension Actionable {
    func eat()-> Void  {  print("I am eating")   }
    func hunt()->Void {  print("I am hunting")   }
    //func makeNoise()-> Void  {  print("I am making noise \n")  }
}  // end extension




 // You can extend any class or struct to conform to any protocol
 // Here I am asking string to conform to my Protocol
 // Therefore String now will have acces to all methods from protocol

extension String: Actionable  {
    
    func makeNoise(){
        print("test")
    }
}


struct Toy: Actionable  {
    var city: String?
    
}  // end struct



var myToy = Toy()    // initialize struct
myToy.city = "sangli"
var x: String!  = myToy.city

print(" ********** Implement Protocol method using String object **********")
x?.makeNoise()    // we are making a String object makeNoise 






print ( "\n \n \n ************ Implememt methods from my Struct  ******************")
myToy.eat()
myToy.hunt()
//myToy.makeNoise()



func isReferenceType(toTest: Any) -> Bool {
    return type(of: toTest) is AnyObject
}


isReferenceType(toTest: Actionable.self )    // this shows that a protocl is not Reference Type
isReferenceType(toTest: myToy)




*/





//  *****************  Let's create a UTIL Library **************************

// Firts, define an empty protocol
protocol Util {
    
}

extension Util {
    func climb () -> Void {  print("I am climbing ...")     }
    func jump () -> Void {  print("I am jumping")   }
    func doSomething()-> Void { print("Now I am doinhg something ...")  }
    
    
    func getTimeDiffBetweenTwoDates (dt1: Date) -> Int  {
        let currentDt = Date()
        let elapsed = currentDt.timeIntervalSince(dt1)
        let duration = Int(elapsed)
        return duration
    }
    
}  // end extension


// Now we will create a class that confirms to Util protocol.
// That class should then be able to use any function in our Librray.
class myVC: Util { }


let temp = myVC()

// Execute a mehod from the Protocol
temp.climb()



// Let's do the same for a Struct
struct myStruct: Util {}

let temp2 = myStruct()
temp2.jump()


// Let's calculate time difference
let bDay1 = Date()
sleep(2)
let timeElapsed = temp2.getTimeDiffBetweenTwoDates(dt1: bDay1)
print("Time elapsed \(timeElapsed) seconds")



// ==========  Use a variable of type 'Protocol'
// The trick here is you can assign any value to this var which conforms to that Protocol

var tmp: Util
class Boy: Util {}

print("+++++++++++++++ last ++++++++++++")
var me = Boy()
// Assign a variable taht conforms to Util to our tmp var
tmp = me
tmp.doSomething()




// ****************************************  END ******************************







//: [Next](@next)
