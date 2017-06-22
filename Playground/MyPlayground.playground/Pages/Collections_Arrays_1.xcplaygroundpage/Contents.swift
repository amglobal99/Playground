//: [Previous](@previous)

import Foundation

// *******************************************************************************

//                   ARRAYS 

// ********************************************************************************




// ******************* Create Arrays ****************************************

var friends: [String]        // simple array
var otherFriends: [String]   // simple array
var foods: [ [String]]        // an array containing other arrays
var otherFoods:[[String]]







// ************* Let's create an Array of structs *************

struct Person {
    var name: String
    var hobbies: [String]
    var gym: (class:String, qty:Int)
 
    init(name: String, hobbies:[String],gym:(class:String, qty:Int) ) {
        self.name = name
        self.hobbies = hobbies
        self.gym = gym
    }
    
}  // end struct


//  ************* Assign values to arrays ************************************
friends =  ["Bussy","Ahmad","NAdine", "JAcob","melanie","KAsey"]
otherFriends = ["Jenny","Ramesh","Mala","Suraj"]
foods = [["Sandwich","Reuben","PoBoy"],["CremeBrulee","Tiramisu","Pussing"],["Sundae","FAlooda","Tart"]]
otherFoods = [ ["Mango","Papaya"],["Laddu","Barfi","Jalebi"],["CAshew","Almonds","Walnuts"]]




// ******************* Manipulat our arrays *********************
friends += otherFriends    // combine two arrays
print( friends )


print("\n\n*****************************************\n\n")



var people = [Person]() // initialize empty array


var zara = Person(name:"Kelly",hobbies:["gym","knit","weave"],gym: ("pilates", 4) )
var buddy = Person(name:"Buddy",hobbies:["bball","soccer","music"],gym:("swim",8))

//print ("******************************")
print ( zara.hobbies)
print(zara.gym.qty)
print("\n\n*****************************************\n\n")


people.append(zara)
people.append(buddy)

print("The struct has  : \(people.count)  elements \n")

print (people[1].name)
print (people[0].hobbies)
print(people[1].gym.class)


print("******************************\n")




// ********************** Sorting. Splitting etc .......


var arr:[Int] = []
//var arr = [Int]()    // this is shorter version of above line. Both do same thing




arr = [50,10,20,15]

arr.append(25)
arr.append(5)


print("*********************************")
print("my Test array: \(arr)  \n")

arr.sort()  // Sort in place
print("Arry sorted in place: \(arr)   \n" )

var sortedArr = arr.sorted()  // sort and assign to new variable
print ("New Sorted Arry: \(sortedArr)  \n" )


// check how many Items the array has
var howMany = arr.count



// print all items
for item in arr {
    print("Item: \(item)")
}

print("*****************************\n")



// Reverse the array
arr.reverse()

// remove third item
arr.remove(at: 2)

// now print new array
//print(arr)

arr.append(8)
arr.insert(35, at: 1)
print("Array with 35 added : \(arr) \n ")



// ****************** Higher order Functions ( Filter, MAp, Reduce ) *************************

// Multiply all items by 2
/*
let sqmap = arr.map { (value:Int)-> Int in
    return value * 2
}
print(sqmap)
*/


let sqmap2 = arr.map{  $0 * 2}
print("**************************************")
print("array multiplied by 2 :   \(sqmap2) ")
print("****************************************")



// Add 10 to all numbers
let sqmap3 = arr.map{$0 + 10}
print("array with 10 added  :   \(sqmap3) ")
print("****************************************\n")



// Give me only even numbers
print(arr)
let evenNumbers = arr.filter {  $0 % 2 == 0 }
print("even numbers : \(evenNumbers)  \n")


// reduce
let arrTotal = arr.reduce(0, {$0 + $1})
print(arrTotal)
print("**************** TOT ****************t*****\n")






// Give me Unique elements .. remove duplicates
var nArr1 = [1,5,7]
let nArr2 = [9,2,4,5]
nArr1 += nArr2    // combine arrays... this has duplicate values
nArr1 = Array(Set(nArr1))   // remove duplicates
print("Array with no duplicates : \(nArr1) ")




// reduce to get single elemen1t
var amt = nArr1.reduce(0,{$0 + $1} )
print(amt)



// ********** let's cut a piece of array************************

var origArr:[Int] = []
var sArr1:ArraySlice<Int>
var sArr2:ArraySlice<Int>

origArr = [30,4,26,12,44,8,66,11,22,77]




sArr1 = origArr[0..<4]
sArr2 = origArr[4...9]

var finalArr = [Array(sArr1),Array(sArr2)]

origArr.replaceSubrange(1...3, with: [1,2,3])





var strArr = ["jack","mary","bon"]
var abc = strArr.joined(separator: ",")
print("***** str *****")
print(abc)





//: [Next](@next)
