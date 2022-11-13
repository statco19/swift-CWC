import SwiftUI

class Person {

    var name = "Andrew"

    func talk() {
        print("Make a conversation")
    }
}

class Comedian: Person {  // Inheritance
 
    override func talk() {
        print("Make people laugh")
        super.talk()
    }
}

struct TalkShowHost {
    var name = ""
}

func changeName(p:Comedian) {
    p.name = "Bob"
}

// func changeName(p:TalkShowHost) {
//     var c = p
//     c.name = "Bob"
// }

// var a = TalkShowHost()
// a.name = "Joe"

// var b = a
// b.name = "Ted"

// print(a.name)
// print(b.name)

// changeName(p:a)

var a = Comedian()
a.name = "Chris"

var b = a
b.name = "David"

print(a.name)
print(b.name)

changeName(p:a)

print(a.name)
print(b.name)
