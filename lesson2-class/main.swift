class Person {
    var name = ""
    
    func introduceMyself() {
        print("Hi, my name is " + name)
    }
}

class Chef: Person {
    
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a chef")
    }
}

class Poet: Person {
    
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm a poet")
    }
}

class Astronaut: Person {
    
    override func introduceMyself() {
        super.introduceMyself()
        print("I'm an astronaut")
    }
}

var array:[String] = ["Ian", "Andrew", "Ryan", "Jane", "Emily"]

var x:Int = 0
for _ in 1...10 {
    var c:Person
    if(x == 0) {
        c = Chef()
    } else if (x == 1) {
        c = Poet()
    } else {
        c = Astronaut()
    }

    let idx:Int = Int.random(in: 0...4)
    c.name = array[idx]
    c.introduceMyself()
    
    x = (x+1) % 3
}