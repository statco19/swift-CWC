//
//  ContentView.swift
//  lesson4-challenge
//
//  Created by Changjun Oh on 2022/11/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0) {
            
            GeometryReader { g in
                Rectangle()
                    .foregroundColor(.green)
                    .onTapGesture {
                        print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                    }
                
                GeometryReader { k in
                    Rectangle()
                        .foregroundColor(.red)
                        .onTapGesture {
                            print("global x: \(k.frame(in: .global).minX), y: \(k.frame(in: .global).minY)")
                        }
                }
                .frame(width: 2*g.size.width/3,height: g.size.height/4)
                .position(x: g.size.width/2, y: g.size.height/2)
            }
            
            HStack(spacing: 0) {
                   
                GeometryReader { g in
                    Rectangle()
                        .foregroundColor(.purple)
                        .onTapGesture {
                            print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                        }
                }
                
                GeometryReader { g in
                    Rectangle()
                        .foregroundColor(.orange)
                        .onTapGesture {
                            print("global x: \(g.frame(in: .global).minX), y: \(g.frame(in: .global).minY)")
                        }
                }
            }
        }
        .ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
