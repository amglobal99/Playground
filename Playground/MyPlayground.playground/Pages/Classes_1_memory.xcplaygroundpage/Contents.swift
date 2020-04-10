
//: Playground - noun: a place where people can play

import UIKit





/*


class Person  {
    
        var fname:String {
            didSet{
                print("(didSet): current value  \(fname) \n")
            }
            
            willSet {
                print("(willSet): current value  \(fname)  \n")
            }
        }
    
        var lname:String
        var gender:String?
    
    
    init(fname:String, lname:String, gender:String) {
        self.fname = fname
        self.lname = lname
        self.gender = gender
    }
    
    
    func test(astr: String){
        print("Prnting test method from Person class . str value is \(astr)")
    }

    
} // end class

 // ========================================================================


class Boy: Person {
    var hobby:String?
    var age: Int?
    var boyfname = "SAmeer"
    var boylname = "Shah"
    var boygender = "Fem"
    
    init(hobby:String, age:Int) {
        self.hobby = hobby
        self.age = age
        super.init(fname: boyfname, lname: boylname, gender: boygender)

    }
    
    override func test(astr str: String) {
        print("Printing from test method of Boy class. you sent : \(str) \n" )
    }
    
} // end Boy class

// ======================================================================




var jack:Person = Person(fname: "Jacob",lname: "Smith",gender: "Female")
print("+++++++++++++++++++ didSet and WillSet will not fire for statement above +++++++++\n\n")



jack.fname = "Don"
jack.lname = "Trump"

print("++++++++++++++++++++++++++++")



print ( "Fullname is \(jack.fname) \( jack.lname) \n ")
print("++++++++++++++++++++++++++++++++++++++++\n\n")


jack.lname = "Patel"
jack.fname = "Shahrukh"
print("Firtsname is now \(jack.fname) \n")

print("++++++++++++++++++++++++++++++++++++++++\n\n")


 // *********************************************************** 


var myBoy:Person  = Boy(hobby: "Sports", age: 2)
myBoy.test(astr: "Jacko")
print ("name is \(myBoy.lname) \n\n" )



print( " ***********************")
dump(myBoy)
print(" **********************\n\n ")


 */


 
 
 
 
 
 

 
 
 
 /*
 

// **************** ClASS FUNCTION ***************************************
 // A class function is one where you do NOT have to create Instance of class to use function
 // It is samas static method in Java
 // **********************************************************************


class Cow {
    
    class func alert() {
        print("I printed this ")
    }

}

// No need to create instance here
Cow.alert()

 // **************************************************************************
*/







// ****************  THIS SECTION SHOWS US HOW OBJECTS ARE DEINITIALIZED
// we get an idea when object are removed.
//
//  Keep in mind that an Object gets removed after its scope is done.
// Scope can be for example , say a Function.
// Once functon is completed, object is GONE
//
//  ******************************************************************************









// ========== WHEN DOES AN OBJECT GET REMOVED FROM MEMORY ?? 
// =========  AND HOW TO MANUALLY REMOVE BY SETTING IT TO NIL ===============
class Book {
    var bkName:String = "Atlas"
    
    deinit {
        print("Book is being DEINITIALIZED ..")
    }
}


func doSomething() {
    var myBook = Book()
    print("Book object created. Name is : \(myBook.bkName)  " )
    print("---- Leaving Function ----")
}



do {
    print(" *********** Calling Function ***********************")
    var test = try doSomething()
    
    print("***********  Fiished Function *************************")
} catch  {
    print("an error occurred")
}


// ..... what we see here is that the Object is REMOVEd after the function it is in is completed



 // Remove object by using it as Optional and setting to nil

var myBook:Book? = Book()
print("Book name : \(myBook!.bkName)  " )
myBook = nil    // Removed immediately
print( " **************************** ")




// ======================================= END =============================================================







// ======================  Example showing how a regular referenced Object ( Not Optional) is REMOVED =========
//
//          This is a very Important concept
//
//
      class Teacher {
          var name:String = "Tammy"
          var bk: Book
          
          init(name:String,bk:Book){
              self.name = name
              self.bk = bk
          }
          
          deinit{
              print("Teaher is being DEINITIALIZED ..")
          }
          
      } // end class



        func tester() {
            
                var bk = Book()
                var th = Teacher(name: "Kelly", bk: bk)
                print("I am done executing this function...")
        }



    // CAll our test Function. After it completes, objects should get REMOVEd from memory
    print("\n\n\n ***** Calling Tester Func *************")
    var x = tester()
     print(" ******* Finished tester Func ********")




// ===================== END ===========================













//: [Next](@next)

