import UIKit

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    var gadget: Gadget?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Gadget {
    let model: String
    
    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }
    
    weak var owner: Person?

    deinit {
        print("\(model) is being deinitialized")
    }
}


var kelvin: Person?
var iphone: Gadget?

kelvin = Person(name: "Kelvin")
iphone = Gadget(model: "iPhone 8 Plus")

kelvin?.gadget = iphone
iphone?.owner = kelvin

kelvin = nil
iphone = nil


