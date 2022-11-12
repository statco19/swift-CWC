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
        VStack {
            
            List(model.pizzas) { p in
                VStack(alignment: .leading) {
                    HStack {
                        Image(p.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 70, height: 70, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text(p.Name)
                                .font(.system(size: 20, weight: .bold))
                            HStack {
                                Text(p.Topping1)
                                Text(p.Topping2)
                                Text(p.Topping3)
                            }
                            .font(.system(size: 13))
                        }
                    }
                }
            }
            
            Button("Add pineapple") {
                model.addPineapple()
                model.pizzas.shuffle()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}
