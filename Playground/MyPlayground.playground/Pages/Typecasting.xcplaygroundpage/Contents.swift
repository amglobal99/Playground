//: [Previous](@previous)

import Foundation

/// Base class
class MediaItem {
  var name: String
  
  init(name:String) {
    self.name =  name
  }
  
} // end class



// Movie subclass
class Movie: MediaItem {
  
  var director:String
  
  init(name: String, director: String) {
    self.director =  director
    super.init(name: name)
  }

}  // end class




// Song subclass
class Song: MediaItem {
  
  var artist: String
  
  init(name: String, artist: String) {
    self.artist = artist
    super.init(name: name)
  }
  
} // end class






/// Create an array od items

let library = [
Movie(name: "Casablanca", director: "Michael Curtiz"),
Song(name: "Blue Suede", artist: "Elvis Presley"),
Movie(name: "Citizen KAne", director: "Orson Welles"),
Song(name: "The One and Only", artist: "Chesney Hawkes"),
]



var movieCount = 0
var songCount = 0

for item in library {
  
  if item is Movie{
      movieCount += 1
  } else if item is Song {
      songCount += 1
  }
  
}


print("Movie library contains \(movieCount) movies and \(songCount) songs")



print("\n\n ************************************ \n\n")

for item in library {
  
  if let movie = item as? Movie {
    print("Movie: \(movie.name)  and  \(movie.director ) ")
  } else if let song = item as? Song {
     print("Song:  \(song.name) and  \(song.artist)")
  }

}



////   Section II ========================================


// create a nnew array

var things: [Any] = []

let age: Int? = 8
things.append(age )


things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append( (3.0, 5.0)  )
things.append(Movie(name: "GhostBusters", director: "Iban Ritman") )
things.append( { (name: String) -> String in
          "Hello \(name) "
  }  )









print("\n\n ************************************ \n\n")


// let's loop over array

for thing in things {
  
  switch thing {
    
      case 0 as Int:
        print("0 as Int")
      case 0 as Double:
        print("0 as Double")
      case let someInt as Int:
        print("An integer value of \(someInt) ")
      case let someDouble as Double where someDouble > 0:
        print("A positive double value of \(someDouble) ")
      case let (x,y) as (Double, Double):
        print("an (x,y) at \(x) and \(y) ")
      case let someString as String:
        print("A string  value of \(someString) ")
      case let movie as Movie:
        print("A movie called \(movie.name)  ")
      case let stringConverter as (String) -> String:
        print(stringConverter("Michael"))
      default:
        print("Something else")
    
  }
  
  
  
}






//: [Next](@next)
