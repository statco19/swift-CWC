//
//  ContentView.swift
//  module2-wrapup
//
//  Created by Changjun Oh on 2022/11/13.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(model.quotes) { q in
                    NavigationLink(destination: QuoteDetailView(q: q), label: {
                        ZStack {
                            Image(q.image)
                                .resizable()
                                .scaledToFit()
                            VStack(alignment: .leading) {
                                
                                Text(q.quote)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .multilineTextAlignment(.leading)
                                    .padding(.horizontal, 8.0)
                                
                                Text("- " + q.by)
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(.leading, 8.0)
                                
                            }
                        }
                        .cornerRadius(10)
                    })
                }
            }
            .navigationBarTitle("Quotes")
//            .navigationBarHidden(true)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
