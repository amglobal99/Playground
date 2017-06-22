//: [Previous](@previous)

import Foundation


//****************************  FUNCTIONS *********************************

/*
    Notes:
 
    1. You have to have  a bracket after func name
    2. a Function normally has parameters
    3. a Function can also have argument names ( also called External param labels)
    4. func test( arg1 param1:String, arg2 param2:String) -> String
    5. In above exmaple, arg1 an darg2 are arguments, param1 and param2 are parameters
 
 */



// a simple function with Parameter names
func send  ( e1:String,  e2:String ) -> Void   {
    print( "Send1 Method --> Printing \(e1)  and  \(e2)  \n ")
}

send( e1:"Mary",e2: "JAne")






// same Function with optional parameter name
func send2  (_ e1:String,  e2:String ) -> Void   {
    print( "Send2 method --> Printing \(e1)  and  \(e2)  \n ")
}

send2( "MAry_2",e2: "Jane_2")



// same Function with 2 external argument names
func send3 (city e1:String, state e2:String ) -> Void   {
    print( "Send3 method --> Printing \(e1)  and  \(e2)  \n ")
}

send3 ( city:"Bombay",state: "Megan")



// same Function with optional param name
func send4 (city e1:String, _ e2:String ) -> Void   {
    print( "Send3 method --> Printing \(e1)  and  \(e2)  \n ")
}

send4 ( city:"Miami", "Crystal")






print ("*******************************************************\n")






// USe Assert to do early exit based on a condition
func transformString (_ str: String?) -> String {
    assert(str != nil, "Invalid parameter") // here
    return str! + "_transforme \n"
}

 var x = transformString("This" )
//var x = transformString(nil )
print ("\(x)   \n ***************************************************")




// Return Tuple from Function
func add (num1: Int, num2: Int, num3: Int) -> (Int, String)  {
   return (num1 + num2 + num3, "JAck" )
}

var tot = add(num1:10, num2: 20, num3: 30)
print("Tuple is:  \(tot)  \n**************************************** \n ")



// ************ Parameter Names Examples **************************************

// Function with only parameter names, no extrenal argument names
func dojack (this: String, andThat:String) ->String {
    return "Result is \(this) plus \(andThat)"
}

var myVar = dojack(this:"Hello", andThat: "Andy")
print(myVar)


// Function with optional parameter name
func doThis (this: String, _ andThat:String) ->String {
    return "Result is \(this) plus \(andThat)"
}

var result = doThis(this:"Hello",  "Dude")
print(result)


// Function with one External argument name
func doSomething (greeting this: String,  andThat:String) ->String {
    return "Method doSomething:  \(this) plus \(andThat)"
}

var result2 = doSomething (greeting: "Hello",  andThat: "Dude")
print(result2)



// Function with 2 External argument names
func doSpecial(sport this:String,  hobby andThat:String) -> String {
    return "Method doSpacial:   \(this) plus \(andThat)"
}

var result3 = doSpecial(sport: "Hello",  hobby: "Dude")
print(result3)
print("\n********************************************************************\n")

// *************************** end Param section **************************************************








// closure Trailing
func greet (name: String, comp: ()->Void )  {
    print ( "Hello there \(name)")
    comp()
}

greet(name:"Majorie") { print("test \n *************************\n") }


// anothere example
func smile(name:String,comp:(String,Int)-> Void) {
    print("My name is \(name)")
    comp("jack",2)
}


smile(name: "Helen")

{ str,count  in
    print("Now name is \(str) and qty was \(count)" )
}
    
print("++++++++++++++++++++++++++++++++++")
    
    
    
    
    
    // How to use a Functon as func parameter
func addTwoInts(a: Int, _ b: Int) -> Int {
    return a + b
}

func printMathResult(mathFunction: (Int,Int)->Int, a: Int,  b: Int) {   // first parameter 1 is a function
    print("Result: \(mathFunction(a, b))")
}

var myFunc:(Int,Int)->Int = addTwoInts
//printMathResult(mathFunction: myFunc, a:5, b:10)
printMathResult(mathFunction: addTwoInts , a:15, b:10)


print("\n********************************************************************\n")








// Assign a function to a variable and use the var

func printInt(i:Int)->() {
    print("You passed:  \(i)")
}

// This assigns the function you just declared to a variable.  Note the absence of () after the function name.
let funVar = printInt


// Now you can call that function using your variable. Note the use of () after the variable name.
funVar(2)  // will print out "you passed 2"
print("\n********************************************************************\n")




// Function that takes a func as an argument
func useFunction(_ funParam: (Int)->() ) {
    print("Before calling parameter function.")
    funParam(3)     // call the passed-in function:
    print("After the call to parameter function. \n*************************************************\n")
}

// CAll the function and pass in a function
useFunction( printInt)




// assign a function to a var
var  anotherVar = printInt
anotherVar(4)










//: [Next](@next)
