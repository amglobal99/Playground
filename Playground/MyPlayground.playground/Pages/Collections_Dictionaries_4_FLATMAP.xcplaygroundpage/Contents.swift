//: [Previous](@previous)

import Foundation




/// First, we define a Dictionary
var dict:[Int:[String] ] = [:]
dict = [99:["f","j"],22:["e","d"],11:["w","d"],4:["a","u"], 7:["p","y"]]
print("Original Dictionary:" )
print(dict)
print("\n\n")

/*
 // Let's first get the values array
 var val = Array(dict.values)
 print("Values:\n")
 print(val)
 print("\n ************************************ \n\n")
 
 */




// Filter the collection ... give me only entries with key  > 4
// When you run filter on a Dictionary, yu get an array of tuples
// This returns an array of tuples
var filtered  = dict.filter {
  val in
  val.key  > 4
}

print("Filtered Items from Dictionary: ( get entries with keys greater than 4 ) ")
print(filtered)
print("\n\n")





// extract only the values from the tuple array
// We'll get an array of arrays
var valueArrays = filtered.map {
  key, val  in
  val
}


print("Value Arrays: ( just extract the values for all keys )")
print(valueArrays)







// Let's flatten and map this nested array
let final = valueArrays.flatMap {  array in
  array.map {
    element in
    return element
  }
}






print("\n\n")
print("Final:")
print(final)



























//: [Next](@next)
