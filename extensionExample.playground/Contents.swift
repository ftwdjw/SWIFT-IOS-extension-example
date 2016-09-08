//: This IOS playground shows how to make an extension off a Double precsion number.
// tested in xcode 8

import UIKit

extension Double {
    
    var convertToString: String {return self.asSinglePrecisionString()}
    
    func asSinglePrecisionString() -> String {
        let strOfNumber = String(format: "%4.1f", self)
        return strOfNumber
    }
}

extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
// Prints "One inch is 0.0254 meters"
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
// Prints "Three feet is 0.914399970739201 meters


let x = (3.00).convertToString


print(x,"is the conversion output")
