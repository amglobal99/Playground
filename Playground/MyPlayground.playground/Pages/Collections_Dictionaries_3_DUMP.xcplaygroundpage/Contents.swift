//: [Previous](@previous)

import Foundation

 
 func filterArrayOfDictionaries(dictToSearch: [[String:String] ], searchKey: String, searchValue: String) -> [ [String:String] ] {
      let filtered = dictToSearch.filter {
        val in
        val[searchKey] == searchValue
      }
 
      return filtered
 }
 
 


var dict3: [[String:String]  ]   // this is an array of individual Dictionary items

// Let's create an Array of individual Dictionary items
dict3 = [
  ["name":"jack","age": "10"],
  ["name":"kim","age": "24"],
  ["name":"pam","age":"44"]
]


// Let's filter the last collection which is an array of Dixtionaries
var filtered = dict3.filter {
  val in
      // val["name"] == "jack"
      val["name"] == "jack"
}

print(filtered)


var newFilter = filterArrayOfDictionaries(dictToSearch: dict3, searchKey: "name", searchValue: "jack")
print(newFilter)








var dict = [1:"jack", 2:"pauline", 4:"test"]
var s = Array(dict)  // creates an array of Tuples
print(s)


for (k,v) in s {
   print(" \(k) :  \(v)")
   
}






func pairsFromDictionary<KeyType, ValueType> (dictionary: [KeyType: ValueType] ) -> [(KeyType, ValueType)] {
   return Array(dictionary)
}

let pairs = pairsFromDictionary( dictionary: ["minimum": 199, "maximum": 299] )
let morePairs = pairsFromDictionary(dictionary: [1: "Swift", 2: "Generics", 3: "Rule'"])




print(pairs)

print(morePairs)
















//: [Next](@next)
