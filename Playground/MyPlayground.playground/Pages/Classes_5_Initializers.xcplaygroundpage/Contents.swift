//: [Previous](@previous)

import Foundation




   /// ========== EXAMPLE OF 2 PHASE INITIALIZATION ==============================



      class Vehicle {
            var model:String
            var factory: String?
        
              init(model: String ) {
                 print("      Vehicle ..... starting init")
                 self.model = model
             }

             convenience init() {
                 print("      Vehicle ..... starting convenience")
                 self.init(model: "Blanko")
             }
         
           func test(str: String) {
             print("The new model value is \(str) " )
             self.model = str
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
                  

               
                     print("   Sedan - Phase 2 ..... updating color to Green")
                     self.color = "green"
                     self.model = "Ambassador"
                  
                }
              
              
               override func test(str: String) {
                   //self.color = "purple"
                   super.test(str: str)
                   
                   print("test")
                   self.color = "yellow"
              }
        
      } // end Sedan class





      class Hatchback: Sedan {
         var doors: Int
         
         init(doorCount: Int) {
               print("Hatchback .... starting init " )
               self.doors = doorCount
               super.init(miles: 50, color: "Pink")
         
               print("Hatchback .... phase 2 " )
               self.doors = 4
         }
         
      } // end class








      /// ==================== EXECUTE action ============================

      //var veh1 = Vehicle(model: "tetsa")
      //var veh = Vehicle()


      //var myCar = Sedan(miles: 20, color: "red")
      //myCar.test(str: "Tesla")


      //print("   Sedan color is : \(myCar.color )   ")



      var civic = Hatchback(doorCount: 2)
      print("\n\nNumber of doors: \(civic.doors)  ")
      print(civic.model)




























//: [Next](@next)
