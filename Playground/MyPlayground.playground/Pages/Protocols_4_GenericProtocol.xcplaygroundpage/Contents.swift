//: [Previous](@previous)

import Foundation






//// *********  GENERIC PROTOCOL  *******************
///
///  This is how you can create a generic protocol.
///  In this example, we shoudl be able to print a String or an Int



public protocol Printer {
   associatedtype Item
   func printThis(val:Item)
}



struct AnyPrinter<U>: Printer {
   
   typealias Item = U
   
   // Define a Function that will be passed in to us. We will use this function in our printThis function.
   let show: (U) -> ()
   
   // Initializer
   init<Base: Printer where Base.Item == U>(base : Base) {
      // assign the function from the passed in object to my 'show' variable. THIS IS THE TRICK
      // NOTE: what we are assigning to the variable is a function
      show = base.printThis
   }
   
   func printThis(val: U ) {
      // We will now call a Function represented by the show variable.
      // The show var is a function whose value is passed in to us.
      show(val)
   }
   
} // end struct



struct JackLogger<U>: Printer {
   typealias Item = U
   func printThis(val: U) {
      NSLog("Value is : \(val)")
   }
}


/*
 let jLogger = JackLogger<String>()
 let printer = AnyPrinter(base: jLogger)
 printer.printThis(val: "jack")
 */


/*
 let jLogger = JackLogger<Int>()
 let printer = AnyPrinter(base: jLogger)
 printer.printThis(val: 8)
 */



let jLogger = JackLogger<[Int]>()
let printer = AnyPrinter(base: jLogger)
printer.printThis(val: [6,9,11])







//: [Next](@next)
























//: [Next](@next)
