//: [Previous](@previous)

import Foundation

class Counter {
    
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func decrement(){
        self.count -= 1
    }
    
    func increment(by amount:Int){
        self.count += amount
    }
    
    func reset(){
        self.count = 0
    }
    
}  // end clas



var cnt = Counter()

cnt.count
cnt.increment()
print(cnt.count)
cnt.increment(by: 4)
print(cnt.count)











//: [Next](@next)
