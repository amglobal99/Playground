//: [Previous](@previous)



// *******************   COMPLETON CODE *******************



import Foundation


func helloPaul ( name: String,   compl: (String) -> Void       ) {
    print("Starting")
    sleep(10)
    compl("Sangli" )   // this puts the value
}



print("Lets see if anyone is there" )


helloPaul(name: "Jack")
    {  (city:String) -> Void  in
        print("We received a response which is :  \(city) " )
    }

print("Ending line.." )












//: [Next](@next)
//
