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
//    init(model: String) {
//        self.model = model
//        print("\(model) is being initialized")
//    }
    
    init(model: String, owner: Person) {
        self.model = model
        self.owner = owner
        print("\(model) is being initialized")
    }
    
    
//    var owner: Person?
//    weak var owner: Person?
    unowned var owner: Person
    deinit {
        print("\(model) is being deinitialized")
    }
}


var kelvin: Person?
var iphone: Gadget?

kelvin = Person(name: "Kelvin")
iphone = Gadget(model: "iPhone 8 Plus", owner: kelvin!)

kelvin?.gadget = iphone

kelvin = nil
iphone = nil


