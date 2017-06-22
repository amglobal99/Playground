//: [Previous](@previous)

import Foundation



enum Router {
  
  
    case get
    case post
    case delete
  
  
  init?(rawValue: String) {
    switch rawValue {
      case "GET":
        self = .get
      case "POST":
        self = .post
      case "DELETE":
        self = .delete
    default:
        self = .get
    }
    
  } // end init
  
  
  
  var url:String{
    switch self {
      case .get:
        return "http://www.yahoo.com/get"
      case .post:
        return "http://www.yahoo.com/get"
      case .delete:
      return "http;//www.yahoo.com/dele"
    case .post:
      return "http://www.yahoo.com/post"
    }
    
    
  } // end url
  
  
  
  
  
} // end enum



 var rout:Router?  = Router(rawValue: "DELETE")


//print(rout)


if let r = rout {
  print(r.url)
  
}




if case Router.delete = rout! {
  print("yes")
}







if rout == Router.delete {
  print("yesss")
}







