//
//  ContentView.swift
//  lesson4-GeometryReader
//
//  Created by Changjun Oh on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            GeometryReader { geo in
                Rectangle()
                    .frame(width: geo.size.width/4, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
                    }
            }
//            .padding([.top, .leading], 30)
//            .offset(x:30, y:30)
            .position(x:400, y:300)
            
            GeometryReader { geo in
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: geo.size.width/4, height: geo.size.height, alignment: .center)
                    .onTapGesture {
                        print("global x: \(geo.frame(in: .global).minX), y: \(geo.frame(in: .global).minY)")
                        print("local x: \(geo.frame(in: .local).minX), y: \(geo.frame(in: .local).minY)")
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
