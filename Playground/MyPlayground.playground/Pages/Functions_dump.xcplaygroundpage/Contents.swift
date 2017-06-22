//: [Previous](@previous)

import Foundation


// write a function to multiply two numbers
func multiply(val1:Int,val2:Int)-> Int {
    return val1 * val2
}

let total = multiply(val1: 2, val2: 4)


// Write a func to multiply without using Mult operator
func mult(val1:Int, val2: Int) -> Int {
    var total:Int = 0
    for _ in (1...val2) {
        total += val1
    }
    return total
}

let tot = mult(val1: 5, val2: 4)







// Write a func to multiply negative numbers
func mul(val1:Int, val2:Int) -> Int? {
    
    // I need to know how many negatives we have ( 0 or 1  or 2)
    var numberOfNegs:Int = 0
    var multTotal:Int = 0
    
    if (val1 < 0) { numberOfNegs += 1}
    if (val2 < 0) { numberOfNegs += 1}
    print(numberOfNegs)
    
    //we are only concerned if we have 1 neg. O or 2 does not matter.
    for _ in (1...abs(val2)) {
        multTotal += abs(val1)
    }
    
    if numberOfNegs  == 1 {
        return -(multTotal)
    } else {
        return multTotal
    }
    
    
    
}



let negMultiply = mul(val1:-3, val2: -15)









// TEst for Function Overloading













//: [Next](@next)
