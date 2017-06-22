//: [Previous](@previous)

import Foundation




func formatCurrency(value: Double) -> String {
  let formatter = NumberFormatter()
  formatter.numberStyle = .currency
  formatter.maximumFractionDigits = 2;
  formatter.locale = Locale(identifier: Locale.current.identifier)
  let result = formatter.string(from: value as NSNumber);
  return result!
}




var price = 34.75

var x = formatCurrency(value: price)

print(x)








/// *****************************************************************

///  NSDecimalNumber Section
/// ***************************************************************


 let handler = NSDecimalNumberHandler(
  roundingMode: NSDecimalNumber.RoundingMode.bankers,
  scale: 2,
  raiseOnExactness: false,
  raiseOnOverflow: false,
  raiseOnUnderflow: false,
  raiseOnDivideByZero: false
)





// Let's try Multiplication
let length:NSDecimalNumber = 245.765
let width:NSDecimalNumber = 10.669
let tempArea = length.multiplying(by: width)
print(tempArea)
let area = tempArea.rounding(accordingToBehavior: handler)
print("Area is : \(area)")




// Let's do division
//let v1: NSDecimalNumber = 235.76859
//let v2:NSDecimalNumber =  7.864767


let v1 = NSDecimalNumber(decimal: 235.76859)
let v2 = NSDecimalNumber(decimal: 7.864767)

let tempAnswer = v1.dividing(by: v2)
print(tempAnswer)
let answer = tempAnswer.rounding(accordingToBehavior: handler )
print("Division answer : \(answer) ")







let len = NSDecimalNumber(decimal: 375.8999)
let wid = NSDecimalNumber(decimal: 43.8788)
let per = len.multiplying(by: wid)
print(per)








// Do math using values from Text Fields

let val1 = "12.675"
let val2 = "14.867"


let dec1 = NSDecimalNumber(string: val1)
let dec2 = NSDecimalNumber(string: val2)



let finalVal = dec1.multiplying(by: dec2)

print("Final value : \(finalVal) ")










// *************************************************************
//
extension NSDecimalNumber {

func negative() -> NSDecimalNumber {
   //return self.decimalNumberByMultiplyingBy(NSDecimalNumber(mantissa: 1, exponent: 0, isNegative: true))
  return self.multiplying(by:  NSDecimalNumber(mantissa: 1, exponent: 0, isNegative: true)   )
}

}


var gdp = NSDecimalNumber(decimal: 346.876682)

gdp = gdp.negative()

print(gdp)

// ***************************************************************







// ******************* convert String to NSDecimalNumber ***************

let formatter = NumberFormatter()
formatter.generatesDecimalNumbers = true

extension String {

func toNSDecimal(str: String) -> NSDecimalNumber {
  return formatter.number(from: str) as? NSDecimalNumber ?? 0
  
  
}

}  // end extension


var priceStr = "33.974"
var itemPrice = priceStr.toNSDecimal(str: priceStr)

// ***********************************************************************










// ***********************************************************************

var amot = NSDecimalNumber(string: "333.569")

if amot == NSDecimalNumber.notANumber {
  print("Not number")
} else {
  print("It is a number")
}










//****************  Artithmetic opertaors for NSDecimal ************************************


extension NSDecimalNumber: Comparable {
  
  
  static public func ==(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .orderedSame
  }
  
  static public func <(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> Bool {
    return lhs.compare(rhs) == .orderedAscending
  }
  
  // MARK: - Arithmetic Operators
  static public prefix func -(value: NSDecimalNumber) -> NSDecimalNumber {
    return value.multiplying(by: NSDecimalNumber(mantissa: 1, exponent: 0, isNegative: true))
  }
  
  static public func +(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.adding(rhs)
  }
  
  static public func -(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.subtracting(rhs)
  }
  
  static public func *(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.multiplying(by: rhs)
  }
  
  static public func /(lhs: NSDecimalNumber, rhs: NSDecimalNumber) -> NSDecimalNumber {
    return lhs.dividing(by: rhs)
  }
  
  static public func ^(lhs: NSDecimalNumber, rhs: Int) -> NSDecimalNumber {
    return lhs.raising(toPower: rhs)
  }
  
  
} // end extension


var a: NSDecimalNumber = 3.678
var b: NSDecimalNumber = 2.967



var c = a + b

var d = a * b

var e = a - b

var f = a / b

a == b

var g  = -a

print(g)


a < b

a ^ 2


print("\n\n===============")
print(c)
print(d)
print(e)
print(f)
print(g)

print("==================\n\n")












/// ******************* Convert string to NSDecimalNumber ************************************




extension String {
  
  
  
  /// Converts a string value to a NSDecimalNumber
  /// usage:
  /// var priceStr = "367.875"
  /// var itemPrice:NSDecimalNumber = priceStr.toNSDecimal()
  ///
  /// - Returns: a NSDecimalNumber or 0 if not successful
  func toNSDecimal() -> NSDecimalNumber {
    let formatter = NumberFormatter()
    return formatter.number(from: self) as? NSDecimalNumber ?? 0
  }
  

  
  /// Function creates a NSDecimalNumber from a String value
  
  func getNSDecimalNumber() -> NSDecimalNumber?  {
    let formatter = NumberFormatter()
    formatter.generatesDecimalNumbers = true
    return formatter.number(from: self) as? NSDecimalNumber
  }
  

  
} // end extension



//var grandTotal: String  = "36.967"
var grandTotal: String  = "this test"

var gTot = grandTotal.getNSDecimalNumber()

if let grnd = grandTotal.getNSDecimalNumber() {
  print(grnd)
} else {
  print("IS a nil")
}


//*******************************************************************************













//: [Next](@next)
