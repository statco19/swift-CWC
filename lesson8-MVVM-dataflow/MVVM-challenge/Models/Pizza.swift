import Foundation

class Pizza: Identifiable {
    
    var id = UUID()
    
    var Name = ""
    var Topping1 = ""
    var Topping2 = ""
    var Topping3 = ""
    
    init() {}
    
    init(name:String, topping1:String, topping2:String, topping3:String) {
        Name = name
        Topping1 = topping1
        Topping2 = topping2
        Topping3 = topping3
    }
}
