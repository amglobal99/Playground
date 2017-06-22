//: [Previous](@previous)

import Foundation

var count: Int
var newCount:Int = 5
count = 10


newCount += count
print ("original count is \(count)  " )
print ("New count is \(newCount)  " )



/*

func mult (int1:Int, int2:Int) -> Int {
    var total = 0
    for _ in 1...abs(int2) {
        total += int1
    }
    
    return total
    
}


var multTotal = mult(int1: 5, int2: -4)

print("Multiplr total is : \(multTotal)  ")

*/





var x = -5
x += -5

// check the sign see if negative
let number = -5
var sign = number > 0 ? 1 : number == 0 ? 0 : -1;



// Function to multiply negative numbers
// withot using * operator

func mult (int1:Int, int2:Int) -> Int {
    var total = 0
    var howManyNegatives = 0
    
    let int1Sign = int1 < 0 ? 1 : 0
    let int2Sign = int2 < 0 ? 1 : 0
    
    howManyNegatives +=  int1Sign + int2Sign
    
    print("Negatives: \(howManyNegatives)")
    
    for _ in 1...abs(int2) {
        total += abs(int1)
    }
    
    print("Total:\(total)")
    
    
    if howManyNegatives == 1 {
        print("one")
        //return total * -1
        return -(total)
    } else {
        return total
    }
    
}


var test = mult(int1: -5, int2: 2)

print(test)












var x2:Int = 6
// convert to negative
var y4:Int = -x2



var cost:Double = 2.557
var total = 4 * cost

total = -total




//: [Next](@next)
