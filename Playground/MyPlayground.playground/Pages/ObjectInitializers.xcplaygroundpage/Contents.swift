//: [Previous](@previous)

import Foundation
import UIKit
import CoreData


//  We will use this page to see how Initialization works for an object and its superclass.


class Person {
    var  name: String
    var  height:Int?
    
            init() {
                // Phase 1 ..... Initialize your properties
                self.name = "paul"
                
                // Phase 2 Begins here....All properties are initialized. Now perform additional Initialization
                self.height = 10
                
            }  // end init
    
}  // end class



// .........


class Student: Person {
    var frat: String
    var gender: String?
    
            init(f: String) {
                // Phase 1 ... Initialize your properties. Then call super.init()
                self.frat = f
                super.init()
                
                //Phase 2 .....Perform additional Initialization
                self.frat = self.frat + "- new"
                self.height = 20
            } // end init
    
}  // end class






var a:Student = Student(f: "kappa")
print("Frat value : \(a.frat) "  )
print("Height: \(a.height!)")




//: [Next](@next)
