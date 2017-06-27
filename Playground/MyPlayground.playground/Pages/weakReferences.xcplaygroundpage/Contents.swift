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

if  let temp = a {
   print("Name for object a is \(temp.name)")
}









//: [Next](@next)
