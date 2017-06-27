//: [Previous](@previous)

import Foundation



class Vehicle {
    
    var model:String
  var factory: String?
  
  
     init(model: String ) {
        print("Vehicle ..... starting init")
        self.model = model
    }

    convenience init() {
        print("Vehicle ..... starting convenience")
        self.init(model: "Blanko")
    }
  
  
  func test(str: String) {
    print("The value is \(str) " )
    self.model = "Ferrari"
  }
  
  
  
} // end Vehicle class




class Sedan: Vehicle{
    
    var miles: Int
    var color: String
    
    init( miles:Int, color:String) {
          print("   Sedan ..... starting init")
        self.miles = miles
        self.color = color
        
      super.init(model: "Dekho")
      
      
      
        print("   Sedan - Phase 2 ..... updatig color")
        self.color = "green"
        
    }
  
  
   override func test(str: String) {
    
    self.color = "purple"
    super.test(str: str)
    
    print("test")
    self.color = "yellow"
    
  }
  
  
  
} // end Sedan class



//var veh1 = Vehicle(model: "tetsa")
//var veh = Vehicle()


var myCar = Sedan(miles: 20, color: "red")
//dump(myCar)

myCar.test(str: "jack")


print(myCar.color)

//: [Next](@next)
