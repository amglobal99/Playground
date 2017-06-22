//: [Previous](@previous)

import Foundation


var ttt:Double = 15.0
var mm = (ttt/100)

print(mm)




var x:Int = 51575
var zzz = x * 100


var minInt = Int.max
print(minInt)


var cur:Decimal = 12.50
var jp = cur * 100

for _ in 1...10 {
  cur += 0.05
}

print("Cur is now \(cur) ")





var y = Double(x)/100

print(y)



var am = ( Double(x)/100 ).rounded()

print (am)







/// For accuracy use NSDecialNumber
let amt:Double = 0.0
var sum:Decimal = Decimal(amt)
for _ in 1...100  {
  //sum = sum.adding(0.01)
  sum = sum.advanced(by: 0.01)
}


print("Sum is : \(sum) ")






// Using Double, you see loss of precision
var sum1: Double = 0.0
for _ in 1...10 {
  sum1 += 0.10
}

print("Sum 1 is : \(sum1) " )




// using NSDecimalNumber
var sum2:NSDecimalNumber = NSDecimalNumber(value: 0.0)
for _ in 1...100 {
  sum2 = sum2.adding(0.01)
}

print("sum 2 is \(sum2) ")





// Another example
let numberText = "THIS IS A TEST"
let decimalNumber: NSDecimalNumber = NSDecimalNumber(string: numberText)


print(decimalNumber)

if decimalNumber == NSDecimalNumber.notANumber{
  print("yesss")
}




//: [Next](@next)
