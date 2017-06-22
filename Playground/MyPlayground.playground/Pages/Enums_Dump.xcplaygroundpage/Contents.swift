//: [Previous](@previous)

import Foundation






struct Person {
  
  enum Team: String {
    
    init?( rawValue: String){
      switch rawValue{
      case "TEAM/FAL":
        self = .falcons
      case "TEAM/BEA":
        self = .bears
      case "TEAM/JET":
        self = .jets
      default:
        return nil
      }
    }
    
    case falcons
    case bears
    case jets
    
    
    var city:String {
      switch self {
      case .falcons:
        return "Atlanta"
      case .bears:
        return "Chicago"
        
      case .jets:
        return "Newark"
        
        
      } // end switch
    } // end var
    
  }  // end enum

  
  
  
    var name: String
    var age: Int
    var team: Team
    
    init(name:String, age:Int, team:String) {
        self.name = name
        self.age = age
       // self.team = Team(rawValue: "TEAM/BEA")!
      self.team = Team(rawValue: team)!
    }
    
}




let per = Person(name: "PAul", age: 8, team: "TEAM/JET" )

print("**********************************************")
dump(per)
print(per.team.city)

print("********************************************\n")








enum TestSite {
  
  init?(rawValue: String){
    switch rawValue{
          case "FLICKR":
            self = .flickr
          case "GITHUB":
            self = .github
          case "BIKENYC":
            self = .bikenyc
          case "GOOGLE":
            self = .google
          case "TYPICODE":
            self = .typicode
          default:
            return nil
    }
  }
  
  case flickr
  case github
  case bikenyc
  case google
  case typicode
  
  
  
  var urlString:String {
    switch self {
        case .flickr:
          return "https://api.flickr.com/services/rest"
        case .github:
          return  "https://api.github.com/users/amglobal99/repos"
        case .bikenyc:
          return "http://citibikenyc.com/stations/json"
        case .google:
          return "http://ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=8&q=http%3A%2F%2Fnews.google.com%2Fnews%3Foutput%3Drss"
        case .typicode:
          return "https://jsonplaceholder.typicode.com/todos"
    }
  }
  
  var apiKey: String?  {
    switch self {
    case .flickr:
      return "a6d819499131071f158fd740860a5a88"
    case .github:
      return nil
    case .bikenyc:
      return nil
    case .google:
      return nil
    case .typicode:
      return nil
    }
  }
  
  var method: String?  {
    switch self {
    case .flickr:
      return "flickr.photos.getRecent"
    case .github:
      return nil
    case .bikenyc:
      return nil
    case .google:
      return nil
    case .typicode:
      return nil
    }
  }
  
  var params: [String:String]?  {
    switch self {
    case .flickr:
      return ["extras":"url_h,date_taken"]
    case .github:
      return nil
    case .bikenyc:
      return nil
    case .google:
      return nil
    case .typicode:
      return nil
    }
  }
  
  var rootPath: [String]?  {
    switch self {
    case .flickr:
      return ["photos","photo"]
    case .github:
      return nil
    case .bikenyc:
      return ["stationBeanList"]
    case .google:
      return ["responseData","feed","entries"]
    case .typicode:
      return nil
    }
  }
  
  var key: String?  {
    switch self {
    case .flickr:
      return "datetakenunknown"
    case .github:
      return "id"
    case .bikenyc:
      return "id"
    case .google:
      return "author"
    case .typicode:
      return nil
    }
  }
  
  var dataKey: String?  {
    switch self {
    case .flickr:
      return "id"
    case .github:
      return "clone_url"
    case .bikenyc:
      return "statusValue"
    case .google:
      return "title"
    case .typicode:
      return nil
    }
  }
  
  
} // end enum




//if let site = TestSite(rawValue: "BIKENYC") {
  if let site = TestSite(rawValue: "FLICKR") {
  
      print("*************************************")
    dump(site)
      print("TestSite value : \(site) " )

    


    if let api = site.apiKey {
      print ("API: \(api)  ")
    }
  
    
    if let root = site.rootPath {
      print("Root: \(root) " )
    }
  
    
    
    if let params = site.params {
      print("Params: \(params) " )
    }
    
    
    
  
}




// *****************************************

enum Group {
  
  case braves
  case giants
  case dolphins
  
  
  init?(rawValue: String) {
    
    switch rawValue {
      case "BR":
        self =  .braves
      case "GI":
         self = .giants
      case"DO":
           self = .dolphins
    default:
        self =  .braves
    }
    
  }

  
  
  var mascot:String {
    
    switch self {
    case .braves:
        return "tomahawk"
    case .giants:
      return "barry"
    case .dolphins:
      return "fish"
      
    }
    
    
    
  } //end var
  
  
  
}  // end enum






var x = Group(rawValue: "GI")

print (x!.mascot)



print("\n\n****************************************")
dump(x!)

if x == Group.giants {
  print("ccc")
}


print(per.team)

