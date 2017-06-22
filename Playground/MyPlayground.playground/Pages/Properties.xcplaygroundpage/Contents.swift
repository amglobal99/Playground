//: [Previous](@previous)

import Foundation



// Here, we want to understand Property Geters and Setters as well as Observers


class Animal {
    
    var weight:Int = 100 {
        willSet {
            print("weight is Being set")
        }
        didSet{
            print("weight was set")
        }
    }
    
    var height:Int = 10
    
    
    var bmi:Int {
        get {
            return weight + 50
        }
        
        set{
            weight  = newValue * 2
        }
    }
    
    /* We do not need init because we are setting default values for all properties
    init(n:String, w:Int) {
        self.name = n
        self.weight =  w
    }
 */
    
    
} // end class



var dog = Animal()

print("Curent weight is : \(dog.weight) ")    // Retrieve the weight 
print("Current BMI is   : \(dog.bmi)  ")      // get the computer propety

// Now we are setting the property
dog.bmi = 200


print("New weight is : \(dog.weight) ")    // Retrieve the weight
print("New BMI is   : \(dog.bmi)  ")      // get the computer propety






/*

class Temperature {
    var celsius: Float = 0.0
    
    var fahrenheit: Float {
        get {
            return (celsius * 1.8) + 32.0
        }
        set {
            //celsius = (newValue - 32)/1.8
            celsius = newValue
        }
    }
}

var temp = Temperature()
temp.celsius = 20
print(temp.celsius)

temp.fahrenheit = 95 // newValue being passed

print(temp.celsius)



*/

















//: [Next](@next)
