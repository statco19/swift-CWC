import SwiftUI

struct ContentView: View {
    
    var model = RecipeModel()
    
    var body: some View {
        List(model.recipes) { r in
            VStack(alignment: .leading) {
                Text(r.name)
                    .font(.title)
                Text(r.cuisine)
            }
        }
    }
}
