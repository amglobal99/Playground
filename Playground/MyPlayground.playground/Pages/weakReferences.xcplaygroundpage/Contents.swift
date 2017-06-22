//: [Previous](@previous)

import Foundation



class Person {
    let name: String
    init(name: String) { self.name = name }
    deinit {
        print("\(name) is being deinitialized")
    }
}


// place in body of your struct or class
weak var a:Person?
     var b:Person?



// place inside a method
b = Person(name: "john")
a = b

b = nil



print("Name for object a is \(a!.name)")

if b != nil{
   print("Name for object a is \(b!.name)")
}




//: [Next](@next)
