import SwiftUI

struct ContentView: View {
    @State private var arr:[Int] = []
    
    var body: some View {
        VStack {
            List(arr, id:\.self) { e in
                Text(String(e))
            }
            
            Button(action: {
                var x:Int
                repeat {
                    x = Int.random(in: 1...10)
                    arr.append(x)
                } while(x != 7)
            }) {
                Text("Generate!")
                    .padding()
            }.background(.white)
            
            Button(action: {
                for i in 0..<arr.count{
                    arr[i] += 1
                }
            }) {
                Text("Increase!")
                    .padding()
            }.background(.green)
            
            Button(action: {
                arr = []
            }) {
                Text("Clear")
                    .padding()
            }.background(.red)
            Spacer()
        }
    }
}
