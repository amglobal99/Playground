//: [Previous](@previous)

import Foundation

var set1: Set<Int> = []
var set2: Set<Int>
var set4: Set = [2,7,9]


set1 = Set([1,5,7,3,12])
set2 = Set([5,22,66,4,11,22])


//create array from Set
var arr1:[Int] = Array(set2)
print ( arr1.count)




set1.count

set1.insert(18)
set1.insert(29)

print(set1)



// create a Set from array
var jArr:[Int] = [6,8, 9, 14]
var set3:Set<Int>
set3 = Set(jArr)
print(set3)




set3.contains(9)
set3.description
set3.first
set3.isEmpty
set3.max()



// Now let's do set operations
print("set1:  \(set1)" )
print("Set2: \(set2) ")

set1.union(set2)
set1.intersection(set2)
set1.subtract(set2)   // subtract set2 from set1







var mySet:Set<Int> = []
mySet.insert(4)
mySet.insert(8)
print(" ****** my Set is  ***********")
print(mySet)




//: [Next](@next)
