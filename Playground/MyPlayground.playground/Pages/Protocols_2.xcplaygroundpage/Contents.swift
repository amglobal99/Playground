//: [Previous](@previous)

import Foundation



protocol Warrantable { }




class Car {
   var model:String
   var year: Int
   var warranty: Warrantable
   
   init(mod: String, yr: Int, warr: Warrantable) {
      self.model = mod
      self.year = yr
      self.warranty = warr
   }
   
}




class Warranty: Warrantable {
   var type: String
   var dealer: String
   
   init(type: String, dealer: String) {
      self.type = type
      self .dealer =  dealer
   }
}




var warr1 = Warranty(type: "extended", dealer: "Ed Voyles")

var car1 = Car(mod: "sierra", yr: 2016, warr: warr1)




print(car1.year)












//: [Next](@next)
