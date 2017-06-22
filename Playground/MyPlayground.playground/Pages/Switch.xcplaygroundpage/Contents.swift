//: [Previous](@previous)

import Foundation
import UIKit


enum weekDay:String{
    case Monday = "M"
    case Tuesday = "T"
    case Wednesday = "W"
    case Thursday = "Th"
    case Friday = "F"
}




var partyDay: weekDay = .Thursday

//partyDay = .Thursday


switch partyDay {
case .Monday:
    print("monday")
case .Thursday:
    print("Thursday")
case .Friday:
    print("friday")
default:
    print("default")
    
    
}





enum hobby: String {
    case Sports
    case Weaving
    case Painting
}



var myHobby:hobby

myHobby = hobby.Sports

switch myHobby {
case hobby.Painting:
    print("Painter..")
case hobby.Sports:
    print("Sportamsn...")
default:
    print("test")
}













//: [Next](@next)
