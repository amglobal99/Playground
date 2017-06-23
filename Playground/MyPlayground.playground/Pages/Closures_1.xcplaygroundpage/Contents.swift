//: [Previous](@previous)

import Foundation
import UIKit
//import Playground


/*

var myClosure:(String)->() =
    {
            (str:String)->() in
            print("Value passed in is \(str) \n")
    }

myClosure("Ravi")

print("\n **************************** \n\n ")


func doProcessing(input: String, completion:(String) -> Void )  {
    print(input)
    completion("Sangli" )
}



// call the function
doProcessing(input: "This is Apple")     {
    (result:String)->Void  in
        print("got back: \(result) \n +++++++++++++++++++++++++++++++++++++\n\n" )
    }



*/








//  ===========================  SECTION II =======================================

//  ******* Example of how a Closure escapes a Function

var secondClosure: ( (String)->()  )?   // we will make this closure escape the function below



      // ========  my test function  ================

        func test( name: String,   completion: @escaping  (String)->Void ) -> String {
            //print("Variable passed into function: \(name) \n " )
            NSLog("Starting test Function ...")
            sleep(10)
            NSLog("Will start closure ..")
            secondClosure = completion   // closure has escaped out of Function
            completion("Zeena")
            return name + " Jack \n"
        }


var tempClosure = {
    (st:String)->Void in
    print("Closure code. Value is : \(st) \n "  )
    print("\n **************************** \n\n ")
}




var temp = test(name: "Pauly", completion: tempClosure)

print ("Value returned by function  : " + temp )
print("\n **************************** \n\n ")




// Let's reuse the closure that we passed into function. Now it has escaped the function.
secondClosure!("new")










/*



// =================  SECTION 3 =============================================

var cls = {
        (str:String)->() in
        print ("I am printingg the value passed into my closure: \(str)  ")
    }


// Assign closure to another var
var otherCls = cls


func celebrate(name:String, completion:(String)->() ) -> String  {
    print("starting")
    NSLog("Starting celebrate ")
    var temp = "Kanadis"
    completion(temp)
    NSLog("Finished closure call")
    
    return (temp )
}


var thisStr = celebrate(name: "xxxx", completion: otherCls)

print("\n **************************** \n\n ")
print ( "Value from closure : \(thisStr) " )
print("\n **************************** \n\n ")





//  ==========================================================================







*/




/*








//  ===========================  ClOSURE CAPTURE LIST  ==============================================
//
//  A capture list captures values as of the time the closure is created
//  In our example, our var has captured one instance of MyClass.
//  So it prints Initial VAlue
//
//   Now if we craete another instance and assign to same var, our var still has old instnace cpatured
//   The new assigment does not chnage wht out closure has oin its memory



class MyClass {
    var value = "InitialValue"  // this is the starting value
}

// create first instance
var instance = MyClass()

// closure captures current instance of the object

var clos = { [instance] in
  print(instance.value)
}


 instance = MyClass()    // We are creaeting a second instance. comment this line to see difference. It should print Update Value
instance.value = "Upadated Value"



// Run the closure
clos()




// ============================================================================


 



*/



//: [Next](@next)
