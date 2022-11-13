//
//  ContentView.swift
//  lesson3-challenge-TabView
//
//  Created by Changjun Oh on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            
            Text("This tab’s tag is " + String(tabIndex))
            .tabItem {
                VStack {
                    Image(systemName: "tortoise")
                    Text("Tab 1")
                }
            }
            .tag(0)
            
            Button(action: TakeMeToTab3) {
                Text("Take me to tab 3!")
            }
            .tabItem {
                VStack {
                    Image(systemName: "arrow.right")
                    Text("Tab 2")
                }
            }
            .tag(1)
            
            List(1...100, id:\.self) { i in
                Text("This is tab 3!")
            }
            .tabItem {
                VStack {
                    Image(systemName: "hands.clap.fill")
                    Text("Tab 3")
                }
            }
            .tag(2)
            
        }
        
    }
    
    func TakeMeToTab3() {
        tabIndex = 2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
