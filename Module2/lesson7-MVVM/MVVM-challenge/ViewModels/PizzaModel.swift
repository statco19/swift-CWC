import Foundation

class PizzaModel {
    
    var pizzas = [Pizza]()
    
    init() {
        pizzas.append(Pizza(name: "PizzaA", topping1: "cheese", topping2: "tomato sauce", topping3: "mushroom"))
        pizzas.append(Pizza(name: "PizzaB", topping1: "cheese", topping2: "pepperoni", topping3: "tomato"))
        pizzas.append(Pizza(name: "PizzaC", topping1: "cheese", topping2: "onion", topping3: "olive"))
    }
}
