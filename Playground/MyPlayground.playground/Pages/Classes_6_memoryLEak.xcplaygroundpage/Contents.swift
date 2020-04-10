//: [Previous](@previous)

import Foundation



class A {
   var b: B!
   
   deinit {
      print("deinit of A")
   }
}

class B {
   weak var a: A!
   
   deinit {
      print("deinit of B")
   }
}

do {
   
   var a = A()
   var b = B()
   a.b = b
   b.a = a
   
   print("test")
   
   
   
   
}


































//: [Next](@next)
