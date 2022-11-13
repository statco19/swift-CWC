//
//  ContentView.swift
//  lesson3-TabView
//
//  Created by Changjun Oh on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabIndex) {
            Text("This is tab 1")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("Tab 1")
                    }
                }
                .tag(0)
            
            VStack {
                Text("This is tab 2.")
                Text("This is some more text.")
            }
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("Tab 2")
                }
            }
            .tag(1)
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
