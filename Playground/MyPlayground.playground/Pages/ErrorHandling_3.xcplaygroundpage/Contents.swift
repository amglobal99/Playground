//: [Previous](@previous)

import Foundation

enum myError: Error {
    case invalidUrl(msg:String)
    case jackError(jerr:String)
    case otherError(oerr:String)
}


func printThis(msg:String) throws -> String? {
    guard
        let temp  = try? String(contentsOfFile: "Foo.bar", encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
    else {
        throw myError.jackError(jerr: "No luck JAcko")
    }
    return msg + " - new "
}




 /// ========= MAin Procesing =========================================
do {
    try printThis(msg: "tetsre")
    
} catch myError.jackError(let mmm) {
    print(mmm)
} catch let error {
    print(error )
}

















//: [Next](@next)
