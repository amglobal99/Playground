//: [Previous](@previous)

import Foundation




/// First, we define a Dictionary
var dict:[Int:[String] ] = [:]
dict = [99:["f","j"],22:["e","d"],11:["w","d"],4:["a","u"] ]
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
  item in
    item.key  > 4
}

print("Filtered Items from Dictionary: ( get entries with keys greater than 4 ) ")
print(filtered)
print("\n\n")



/*
/// Transform array of tuples to Dictionary
/// NOte: Since filter returned tuples, now I may want to recreate a Dictionary from those tuples
 //// NOTE: in Swift 4, filter returns a Dictionary
 
var newData:[Int:[String]] = [:]
for result in filtered {
  let k = result.key
  let v = result.value
  print("\(k)  \(v) ")
  newData[k] = v
  
}

print(newData)

*/








// Extract only the values from the tuple array
// We should get back an array of all tuple values ( arrays)
var valueArrays = filtered.map {
  key, val  in   // we have a key and a value in each tuple
  val
}



print("Value Arrays: ( just extract the values for all keys )")
print(valueArrays)







// Let's flatten and map this nested array
let final = valueArrays.flatMap {  array in
  array.map {
    element in
    return element + "-***"
  }
}






print("\n\n")
print("Final:")
print(final.sorted())







//: [Next](@next)
