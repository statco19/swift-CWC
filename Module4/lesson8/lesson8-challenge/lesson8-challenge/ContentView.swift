//
//  ContentView.swift
//  lesson8-challenge
//
//  Created by Changjun Oh on 2022/11/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<60) { index in
                    Rectangle()
                        .fill(RadialGradient(gradient: Gradient(colors: [.orange, .red]), center: UnitPoint(x: 0.5, y: 0.5), startRadius: 0, endRadius: 200))
                        .frame(height: pow(1.1, CGFloat(index)))
                        .cornerRadius(5)
                        .padding(.horizontal)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
