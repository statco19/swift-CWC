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

var c = Comedian()
c.talk()

struct Dummy: View {  // not inheritance, this means that struct Dummy conforms to View protocol

    var body: some View {
        Text("hello world")
    }
}