//: [Previous](@previous)

import Foundation


// **************** EXTENSIONS ********************


extension Int {
    
    func repititions(task: ()->Void ) {
        for _ in 0..<self {
            task()
        }
    }
    
    
}  // end extn




3.repititions() {
    print("Goodbye")
}

















//: [Next](@next)
