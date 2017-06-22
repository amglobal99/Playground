//: [Previous](@previous)
import Foundation


///  ******************** CLOSURES ***************************************


// Normally, you use closure in 2 steps.
// First, you define a closure and assign to a constant or var
// then you call that closure using that var name.
// 
// for exampl, let closure = { print("test") }
//  then to call,   type    closure( )
//
// these steps can be combined into
//  let closure = { print("test") } ()
// syntax :  { ... } ()



// Let's declare a closure without parameters
let myClosure = {
                  print("This is line 1")
                }

// Call this closure. Use name followed by parameters list inside ( )
myClosure()



// You can also execute the closure without a name. BUT,
// there has to be a var or constant associated.
// For example, let x = .......
//            or   var y = ..........
let y = {
  print("Now printing ")
}()



  // Let's execute our nameles closure with parameters. NOTE:
  // parameters are defined inside
let x = { (a:String, b:String) -> String in
    print("Now printing \(a) and \(b)")
    return a + b
}("ss","hh")

print(x)

  






/// **************** CLOSURE WITH NAME


// Declare a closure with parameters
let thisClosure: (String, String) -> () = {
  (var1:String, var2:String) -> () in
    print("I have \(var1) and \(var2)")
}

// call closure
thisClosure("jack", "molly")



// Declare closure without parameters
let jackClosure: () -> () = {
  print("This is Jack's closure")
}

// call the closure
jackClosure()





// ******************** COMPARE TO FUNCTIONS ****************

// first you define function


func barks(str: String)  {
  print("I am barking")
}

// Now call
barks(str: "new")









//: [Next](@next)
