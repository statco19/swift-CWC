import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        VStack {
            
            List(model.pizzas) { p in
                VStack(alignment: .leading) {
                    Text(p.Name)
                        .font(.title)
                    HStack {
                        Text(p.Topping1)
                        Text(p.Topping2)
                        Text(p.Topping3)
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
