//: [Previous](@previous)

import Foundation


 // ===== struct is by Value. i..e it will copy the value for each instance ========

struct book {
    var title: String = "Original"
    var author: String?
}

var obj1 = book()
var obj2 = obj1

obj2.title = "New value"

print("obj1 is \(obj1.title) and obj2 is \(obj2.title) ")

// ================================================================================




// =================== class is Reference type ===================================
class Novel {
    var title: String = "Nautica"
    
}

var nov1 = Novel()
var nov2 = nov1

nov2.title = "Hatari"

print("nov1 is \(nov1.title) and nov2 is \(nov2.title  ) ")

// ============================================================================





// ===========   Closures are Reference types =========================

var abc:String = ""

var myClosure: (String) -> () =
    {
        (str:String) -> () in
            abc += "This is the sentence with \(str) \n"
            print(abc)
    }


myClosure("Jack")
myClosure("New")

var newClosure = myClosure

myClosure("Kelly")
newClosure("Molly")







//: [Next](@next)
