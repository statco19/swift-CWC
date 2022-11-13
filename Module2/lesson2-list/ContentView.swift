import SwiftUI

struct ContentView: View {
    
    var array:[String] = ["mon", "tue", "wed", "thu", "fri"]
    @State var chosen:[String] = []
    
    var body: some View {
        List(chosen, id: \.self) { element in
            Text(element)
        }
        Button {
            let x:Int = Int.random(in: 0..<array.count)
            chosen.append(array[x])
        } label: {
            Text("Click")
                .foregroundColor(.black)
                .padding()
        }.background(.white)
    }
}
