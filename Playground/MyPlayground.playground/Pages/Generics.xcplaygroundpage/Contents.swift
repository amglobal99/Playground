//: [Previous](@previous)


// *****************  GENERICS ********************************


import Foundation
import UIKit


class a: UIView, UITextFieldDelegate {
   
}





func swapValues<T>( a: T,  b: T) -> (T) {
 //   let temporaryA = b
    let b = a
    //let a  = temporaryA
    return b
}


var jack = swapValues(a: "paul", b: "mason")
print ("Value of b is " + String( jack) )

var ajack = swapValues(a: 2, b: 5)
print("value of b is " + String(ajack))



protocol ReusableView { }

func register <T:UITableViewCell where T:ReusableView > ( param1: T.Type  ) -> Void {
    
}


let cell = UITableViewCell()






class Stack<T,E:Hashable> {
    
    var items = [T]()
    var dict = [E:T]()
    
    func push(element:T){
        items.append(element)
    }
    
    func pop( ) -> T {
       return items.popLast()!
        
    }
    
    
}








func genericTest<T:UIView>(name: T.Type) -> Void {
    print("\n ************************** \n\n")
    print("thanks..")
    print(v.tintColor)
}


var v = UIView()
var typ = type(of: v)

print(typ)


genericTest(name: type(of:v ) )




// **************************************************************************** 

// http://stackoverflow.com/questions/35089223/swift-generics-function-with-t-type-as-parameter-returns-optional-t



extension UINavigationController {
    func jpFindFirst<T: UIViewController>(_: T.Type) -> T? {
        for viewController in viewControllers {
            if let viewController = viewController as? T {
                return viewController
            }
        }
        return nil
    }
}



class FooViewController : UIViewController { }
class BarViewController : UIViewController { }

let fooViewController = FooViewController()
let barViewController = BarViewController()

let navController = UINavigationController(rootViewController: fooViewController)
navController.addChildViewController(barViewController)

print(navController.jpFindFirst(type(of: fooViewController)) ?? "None found.")

print(navController.jpFindFirst(type(of: barViewController)) ?? "None found.")



// ***************************************************************************************** 



/*

var v = UIView()

type(of: v)

var x = UIViewController()
type(of:x)

*/




//: [Next](@next)
