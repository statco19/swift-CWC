//
//  ContentView.swift
//  challenge
//
//  Created by Changjun Oh on 2022/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            
            ForEach(1..<51) { i in
                ZStack {
                    GeometryReader { g in
                        Rectangle()
                            .foregroundColor(Color(red: Double.random(in: 0..<1), green: Double.random(in: 0..<1), blue: Double.random(in: 0..<1)))
                            .cornerRadius(20)
                            .shadow(radius: 10)
                        
                        Image(systemName: String(i)+".circle")
                            .resizable()
                            .scaledToFit()
                            .padding(.horizontal)
                            .position(x: g.size.width/2, y: g.size.height/2)
                            
                    }
                    
                }
                .padding(.horizontal)
                .padding(.bottom, 60)
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
