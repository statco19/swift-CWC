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
        
        // Get the path to the json file within the app bundle.
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(filePath: path)
            
            do {
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                do {
                    let pizzaData = try decoder.decode([Pizza].self, from: data)
                    
                    for p in pizzaData {
                        p.id = UUID()
                    }
                    
                    self.pizzas = pizzaData
                }
                catch {
                    print(error)
                }
            }
            catch {
                print(error)
            }
        }
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
