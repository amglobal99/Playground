//: [Previous](@previous)

import Foundation



class Vehicle {
    
    var model:String
    
     init(model: String ) {
        self.model = model
    }

    convenience init() {
        self.init(model: "Blanko")
    }
    
} // end Vehicle class




class Sedan: Vehicle{
    
    var miles: Int
    var color: String
    
    init( miles:Int, color:String) {
        self.miles = miles
        self.color = color
        
        super.init(model: "Dekho")
        
        print("Phase 2 ..... updatig color")
        self.color = "green"
        
    }
    
    
    
} // end Sedan class



var veh1 = Vehicle(model: "tetsa")
var myCar = Sedan(miles: 20, color: "red")
dump(myCar)






//: [Next](@next)
