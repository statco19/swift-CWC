//
//  PizzaModel.swift
//  pizza-demo
//
//  Created by Changjun Oh on 2022/11/12.
//

import Foundation

class PizzaModel: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init() {
//        pizzas.append(Pizza(name: "PizzaA", topping1: "cheese", topping2: "tomato sauce", topping3: "mushroom"))
//        pizzas.append(Pizza(name: "PizzaB", topping1: "cheese", topping2: "pepperoni", topping3: "tomato"))
//        pizzas.append(Pizza(name: "PizzaC", topping1: "cheese", topping2: "onion", topping3: "olive"))
        
        self.pizzas = DataService.getLocalData()
    }
    
    func addPineapple() {
        for i in 0..<pizzas.count {
            pizzas[i].Topping1 = "pineapple"
        }
        
//        for i in 0..<pizzas.count {
//            print(pizzas[i].Topping1)
//        }
    }
}
