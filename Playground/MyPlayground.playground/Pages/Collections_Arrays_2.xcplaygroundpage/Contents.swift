//: [Previous](@previous)

import Foundation


// Create an array of Integers
var firstArray:[Int] = [11,5,22,44,16,56,4,9,77,6]



//Print original array
print("original array: \(firstArray)")



//Give me the index for 56
var inde = firstArray.index(of: 56)
print("Index is : \(inde!) ")

// Get the last element and first element
var idx = firstArray.last
var y = firstArray.first


// Give me elements from 1 to 3 ( both inclusive)
var sArr = firstArray[1...3]

// What is the index for first element ? ... it should be ZERO
firstArray.startIndex

// What is the index for last element NOTE:  endIndex is position after last element
var idxx = firstArray.endIndex - 1
print("Last index is : \(idxx)")


// Give me the array sorted
var nn =  firstArray.sorted()
print("Sorted array: \(nn) \n " )



// Give me elements from position 2 to 5
var ki = firstArray[2...5]
print("Array from 2 to 5 : \(ki) ")


// give me elements after element 3 and before 7 ... which means give me 4,5,6
var zz = firstArray[firstArray.index(after: 3)...firstArray.index(before: 7)]
print("Elements between index 3 and index 7 : \(zz)  \n")













// ===================== MAP ================================
// Give me an array with all elements twice as much as original
var mm = firstArray.map{ $0 * 2 }
print("Doubled array: \(mm) \n ")


// Modify array so that I get each element divided by 5 and then add 10 to it
var scores  = [5,11,8,22,2]
var sc1 = scores.map {
    number -> Int in
    var output = number/5 + 10
    return output
}
print("Scores are : \(sc1) " )


// Other way
var temp = scores.map{$0/5 + 10 }
print(temp)


















// ================ FILTER ====================
// Give me all even elements from array
var z = firstArray.filter { $0 % 2 == 0 }
print(z)

// Other way
var even = firstArray.filter {
    val -> Bool in
    return (val % 2  == 0)
}
print("Filtered array: \(even) " )


// give me only elemenst that are less than 18
var t =  firstArray.filter { $0 < 18 }
print("Array with elements less than 18 : \(t) \n")














/// =============== REDUCE ===================

// NOTE: $0 refers to the Result variable, $1 refers to data element
// give me sum of all elemenst in array
var arr1 = [2,4,10]
var xx = arr1.reduce(0) {$0 + $1 }
print("Sum is : \(xx) " )





// Another format
var red = arr1.reduce(0, +)


var arr2 = [2,4,5]
var tot1 = arr2.reduce(0, +)
var tot2 = arr2.reduce(1, +)

var arr3 = ["jacl","pauly","tammu"]
var final1 = arr3.reduce("-", +)






// ================ REDUCE ===========================
// Good example of how to write custom Reduce
// NOTE : the closure
// What you have in closure is this
// The first var is the 'Result' variable
// Second var is the actual element
// So in example below, we will use result to store incremental values
// name is the actal value in collection
// Initial value we have is "+++". We add to this string


let names = ["alan","brian","charlie"]
let csv = names.reduce("+++")
{  result, name in
    "\(result),\(name)"
}

print("CSV value is \(csv) ")




let scores4 = [22,11, 5, 19,2]

let total4 = scores4.reduce(0) {
  result, val in
  result + val
}



print("Total is \(total4)  " )




// Another way
let csv2 = names.reduce("++"){
     "\($0),\($1)"
}
print("++++++++ csv2 -----> \(csv2)   ")


// Not sure how this works
var rr = [1, 2, 3, 4, 5].reduce([Int]() )
{
    [$1] + $0
}

print(rr[2])







// ======== Flatmap ====================
var arr5 = [[2,4,7],[8,5,9],[11,15,9]]
var fl1 = arr5.flatMap{$0}

print("+++++++++++ f1 +++++++++")
print(fl1)

var fl2 = arr5.flatMap{$0.filter {$0 % 2 == 0} }
print(fl2)










//============= Chaining =============

// 
var arr4 = [1,2,3,4]
var final2 = arr4.filter{$0 % 2 == 0 }.reduce(0, +)
print("Final Total : \(final2)  " )





// Find leat difference between two elements
let arr6:[Int] = [5,11,22,41,19,8,15,1]
let arrSorted = arr6.sorted()
var leastDiff = 0

for i in 0...(arrSorted.count - 2){
  var diff:Int = arrSorted[i + 1] - arrSorted[i]
  if i == 0 || diff < leastDiff {
    leastDiff = diff
  }
} // end for


print("Least diff is \(leastDiff) ")


print("\n\n*****************************\n\n")

/*
// ====== THIS DOES NOT WORK CORRECTLY ++++++

// Move all ZEROS to end of array
var arr8 = [4,0,0, 9,2,0,14,0, 12, 0, 6]

func modify(arr: inout [Int] ) -> [Int] {
  
  for i in 0..<arr8.count {
    print(" \(i) and \(arr[i]) ")
    print("Before: \(arr) ")
    
    if arr[i] == 0 {
      arr.append(0)
      print("Appended: \(arr) ")
      arr.remove(at: i)
    }
    
    print("After: \(arr) " )
    print("++++++++++++++++++++++++")
    
  } // for loop
  
  return arr

  
}


var newArray = modify(arr: &arr8)
print("New array \(newArray) " )
  




print("\n\n*****************************\n\n")

print(arr8)

print("\n\n*****************************\n\n")


*/













/// Option 2 .... Move ZEROS to end
var arr9 = [4,0,9,2,0,1]
arr9.sort{ $1 == 0 }

var newArr = arr9.sorted { $1 == 0 }

print(newArr)


/*
arr9.sort(by:) {
  int1, int2 in
    return int2 == 0
}

print(arr9)
*/











/// Custom Sorted function **********
///
/// sepcify expression for $0 and $1 ( or val1 and val2 )
/// if expression is true, then keep val1 before val2 ( DO NOT CHANGE..
/// Otherwise, if FALSE
/// INTERCHNAGE
///
/// Rule Summarized:  IF expression FALSE, CHANGE val1 and val2
///  TRUE means val1 should be before val2



var x = arr.sorted() {
   (val1:Int, val2:Int) -> Bool    in
   
   if val2 == 0 {
      return true
   } else {
      return false
   }
   
}



print(x)






///  BUBBLE SORT



var array = [5,3,4,6,8,2,9,1,7,10,11]
var sortedArray = NSMutableArray(array: array)
var sortedAboveIndex = array.count
var swaps = 0

repeat {
   
   var lastSwapIndex = 0
   
   for i in 1..<sortedAboveIndex {
      if (sortedArray[i - 1] as! Int) > (sortedArray[i] as! Int) {
         sortedArray.exchangeObject(at: i, withObjectAt: i-1)
         lastSwapIndex = i
         //print("lastSwapIndex : \(lastSwapIndex)")
         
         swaps += 1
      }
   }
   
   sortedAboveIndex = lastSwapIndex
   print("Sorted above index  \(sortedAboveIndex)")
   
   
} while (sortedAboveIndex != 0)





// [5, 3, 4, 6, 8, 2, 9, 1, 7, 10, 11]
print(array)

// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
print(sortedArray as Array)

print("Array is sorted in \(swaps) swaps.")













