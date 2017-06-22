//: [Previous](@previous)

import Foundation



/*

enum Device {
    case iphone
    case ipad
    case ipod
    
    var year: Int {
        switch self{
        case .ipod:
            return 2007
        case .iphone:
            return 2009
        default:
            return 2000
        }
    
    }
    
}   // end enum



var test = Device.ipad
//test = .iphone
print (String(test.year) )

*/







/*








enum Season {
    case Fall(String)
    case Winter(Int)
    case Summer(String)
}

// This is how you first create an Enum
var ssn = Season.Summer("Jack")

// This is hw you retrieve values from an existing enum
switch ssn {
    case .Winter:
        print("This is winter")
    case .Fall:
        print("This is fall")
    case .Summer(let name):
        print("hello ..." + name  )
}


*/







/*


// ==========================================

enum Hobby{
    case Sports(String, Int)
    case Knitting(Int)
    case Gardening (String)
}


var myHobby = Hobby.Knitting(24)
var hobby2 = Hobby.Sports("Greet", 15)


switch hobby2 {
    
    case .Sports(let var1, let var2) where var2  > 10 :
        print("sports \(var1) and \(var2)")
    case .Knitting(let num):
        print("Knitting \(num)")
    case .Gardening:
        print("gardening")
    default:
        print("defaults")
  
}

// =======================================




*/




 //  **** This is how enums are normally used throughout Apple APIs **************


enum Result{
    case success ([String])
    case failure (String)
}

// First you process your data and then put in in an array or String or Dictionary
var tempArray = ["Ball","bat","Net","Stumpss"]

// Then you create an Enum copy to hold this value. We'll call this copy 'photoResult'
var photoResult: Result  = Result.success(tempArray)

// Later, we may want to process the enum. We use that Enum copy using name 'photoResult'
switch photoResult {
        case Result.success(let var1):
            print("    Successfully found \(var1.count) recent photos. First is  \(var1[1])" )
        case  Result.failure(let err ) :
            print("    PhotosViewController.swift : Error fetching recent photos \(err)")
}














/*



struct Person{
    
    var firstName: String
    var lastName: String
    var city: String
    
    init(_ f:String, _ l:String, _ c:String) {
        self.firstName = f
        self.lastName = l
        self.city = c
    }
    
} // end struct



enum Result{
    case success([Person])
    case failure(String)
}


var contacts:[Person] = []

let contact1 = Person("Jessica","Smith","Miami")
contacts.append(contact1)
let contact2  = Person("Megan","Malone","Satara")
contacts.append(contact2)
let contact3 = Person("Bobby","Jones","Destin")
contacts.append(contact3)

var result = Result.success(contacts)

switch result {
    
    
case let Result.success(var1):
    print("We did get success. Printing results")
    for name in var1 {
        print("Firstname: \(name.firstName) Lastname: \(name.lastName)  City: \(name.city)")
    }
case let Result.failure(err):
    print("Bummer.. failure")
    
}


*/








/*


///=========== Generic Enums ===================================

enum Result<T> {
    case success(T)
    case failure(Error)
}

*/

/*
enum Result<Value> {
    case success(Value)
    case failure(Error)
}
*/

var resArr = ["Pim","min","jon","carla"]
var gotIt = Result.success(resArr)

/*
switch gotIt {
    case .success:
        print("succes")
    case .failure:
        print("fail")
}
*/



// Check for a specific case ONLY
if case  Result.success(let resArr) = gotIt {
    print("Associated value is : \(resArr) ")
}






// ********** HOW TO SET AND RETRIEVE VALUES from Enum *********


enum Test:String {
    case one
    case two
}

enum Movie{
    case Cast([String])
    case Budget(Int)
}



// *********** 2 ways to set a value *****************


// OPTION I
var var1 = Test.two   // enu Test has value of one
var mov1 = Movie.Cast(["amitabh","rakhi","mennas"])
print("+++++++++++++++++++++++++++++++++++++++")
print(var1 )
print(mov1)


// OPTION II ..... create an instance
var var2 = Test(rawValue: "two") // NOTE: Test enum is of type String
print(var2!)



// ***************** retriev values ********************

// You have to use a variable which stores a particular Enum
// NOTE: To retrieve an enum, you shoudl first have a variable that has stored that enum

switch mov1 {
case .Cast(let temp):
    print("it is shola  \(temp)")
case .Budget:
    print("it is budget")
}







// PATTERN MATCHING 



enum Zone {
    case East
    case West
    case North
}


var result = Zone.West


// Normal switch
switch result {
    case .East:
        print("east")
    case .West:
        print("westtttt")
    default:
        break
}




// ******** Swift way of Pattern matching in if statements
if case Zone.West = result {     /// NOTE:  It is =  not ==
    print("yes .. match")
}


if result == Zone.West {
    print("west")
}







// ======== *******   Use this technique to convert a String to an Enum ======
// THIS IS VERY IMPORTANT .... always try to use ENum instead of String
// For example, let's say you have a struct called "Student"
// Struct has properties such as NAme, Grade, Height, and say City.
// Let's assume that students can only be from 3 cities -"Kanadi","Kupe", "Chandgad"
// Now instead of storing this valeu as String, we list this property as an Enum
// Student aslos has phot stored. This can be png, jpg or gif ONLY. We will convert that string value to Enum also
/**
    Struct Student {
        name: String,
        grade: Int,
        city: City,
        photo: MimeType
    }
 
 
 We will create two enums, City and MimeType
 
 MORAL OF STORY: Wherever you have a String var, whihc can have only say 4or 5 values, convert to Enum
 
 */


enum MimeType:String {
    
    init?(rawValue: String) {
        switch rawValue {
        case "STUDENT/JPEG":
            self = .jpg
        case "STUDENT/PNG":
            self = .png
        case "STUDENT/GIF":
            self = .gif
        default:
            return nil
        }
    }
    // These are our cases
    case jpg
    case png
    case gif
}


enum City: String {
    
    init? (rawValue: String) {
        switch rawValue {
        case "KANADI":
            self = .kanadi
        case "KUPE":
            self = .kupe
        case "CHANDGAD":
            self = .chandgad
        default:
            return nil
        }
    }
    // These are our cases
    case kanadi
    case kupe
    case chandgad
}



struct Student {
    var name: String
    var grade: Int
    var photo: MimeType
    var city: City
    
    init(name:String, grade:Int, photo: String, city:String) {
        self.name = name
        self.grade = grade
        self.photo = MimeType(rawValue: photo)!
        self.city = City(rawValue: city)!
    }
}



let str = "STUDENT/JPEG"
let mType = MimeType(rawValue: str)
print(mType)
print(mType!)


let str2 = "CHANDGAD"
let city = City(rawValue: str2)
print(city!)



// craete new Student
let stud = Student(name: "JACKO", grade: 5, photo: "STUDENT/PNG", city: "KUPE")


dump(stud)











// This is how it is done in Alamofire

public enum HTTPMethod: String {
  case options = "OPTIONS"
  case get     = "GET"
  case head    = "HEAD"
  case post    = "POST"
  case put     = "PUT"
  case patch   = "PATCH"
  case delete  = "DELETE"
  case trace   = "TRACE"
  case connect = "CONNECT"
}


//: [Next](@next)
