 //: [Previous](@previous)

//: Playground - noun: a place where people can play
/// HOW TO USE MAP, FILTER, REDUCE  using Custom functions
///
///

 

 /// SET 1....... works with Integer array
 var scores:[Int] = [8, 4, 11, 3, 7]

 
 /// Example of writing custom MAP
 var n1 = scores.map {
   val -> Int in
      return val * 2
 }
 print(n1)
 
 
  /// Example of writing custom FILTER
 var n2 = scores.filter {
      val -> Bool in
      return val > 4
 }
 print(n2)
 
 
  /// Example of writing custom REDUCE
 // Good example of how to write custom Reduce
 // NOTE : the closure
 // What you have in closure is this
 // The first var is the 'Result' variable
 // Second var is the actual element
 // So in example below, we will use result to store incremental values
 // name is the actal value in collection
 // Initial value we have is "+++". We add to this string
 

 var n3 = scores.reduce(0) {
    res, cnt in
        return res + cnt
 }
 print (n3)
 
 
 
 
 /// SET 2 .... works with Strings
 
 
 var names = ["laura","amelia","john","paul"]
 
 /// Example of writing custom MAP
 var b1 = names.map {
  val -> String in
  return val + "- **"
 }
 print(b1)
 
 
 /// Example of writing custom FILTER
 var b2 = names.filter {
  val -> Bool in
  return val != "john"
 }
 print(b2)
 
 
 /// Example of writing custom REDUCE
 var b3 = names.reduce("++") {
  res, cnt in
  return res + cnt
 }
 print (b3)
 

 
 
 
