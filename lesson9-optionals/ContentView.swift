import SwiftUI

struct ContentView: View {
    
    @State private var arr:[String]?
    
    var body: some View {
        VStack {
            Spacer()
            Button("reset") {
                arr = nil
            }
            Button("set") {
                arr = [String]()
                
                arr?.append("hi")
                arr?.append("this is ")
                arr?.append("an optional.")
            }
            Spacer()
            if arr == nil {
                Text("Tap the second button to add strings.")
            } else {
                List(arr!, id:\.self) { s in
                    Text(s)
                }
            }
        }
    }
}
