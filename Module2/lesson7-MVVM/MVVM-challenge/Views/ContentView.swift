import SwiftUI

struct ContentView: View {
    
    var model = PizzaModel()
    
    var body: some View {
        
        List(model.pizzas) { p in
            VStack(alignment: .leading) {
                Text(p.name)
                    .font(.title)
                HStack {
                    Text(p.topping1)
                    Text(p.topping2)
                    Text(p.topping3)
                }
            }
        }
    }
}
