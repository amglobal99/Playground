//: [Previous](@previous)

import Foundation

// This is our test array
var teams = [ [4,5],[7,11],[7,44,3] ]


// use an array to flatten. We are not ussing flaMAp here
for index in teams.joined() {
  print(index, terminator: "  " )
}


// Just flatten
var flatened = teams.flatMap { $0  }
print("\nFlattened \(flatened) " )


print("\n\n ***************************** \n\n")
// same thing 
var flat = teams.flatMap {
      val in
        return val
}

print(flat)




// now map
var doubled  = flatened.map { $0 * 2 }
print("\n\n ***************************** \n\n")
print(doubled)


print("\n\n ***************************** \n\n")
print(teams)




var teams1 = [ [4,5],[7,11],[7,44,3] ]

// combine flattening and mapp into one
var final = teams1.flatMap {  val in
     return val.map {  integer in
           return integer * 2
    }
}


print(final)







//// REAL WORLD JSON example  ************************

//Let's create a JSON data 










//: [Next](@next)
