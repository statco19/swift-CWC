//
//  ContentView.swift
//  pizza-demo
//
//  Created by Changjun Oh on 2022/11/12.
//

import SwiftUI

struct PizzaListView: View {
    @ObservedObject var model = PizzaModel()
        
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(model.pizzas) {pizza in
                    PizzaView(p: pizza)
                }
            }
        }
        
//
//            Button("Add pineapple") {
//                model.addPineapple()
//                model.pizzas.shuffle()
//            }
//        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}
