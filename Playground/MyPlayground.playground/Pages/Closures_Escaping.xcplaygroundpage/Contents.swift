//: [Previous](@previous)

import Foundation




// ******** Example of Escaping Closure ***************************

func someFunctionWithNonescapingClosure(closure: @noescape () -> Void) {
    closure()
}


var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    completionHandlers.append(completionHandler)
}



class SomeClass {
    
    var x = 10
    
    func doSomething() {
        someFunctionWithNonescapingClosure { x = 200 }
        someFunctionWithEscapingClosure { self.x = 100 }
    }
}

let instance = SomeClass()
instance.doSomething()

print(instance.x)
// Prints "200"


completionHandlers.first?()
print(instance.x)
// Prints "100”









//: [Next](@next)
