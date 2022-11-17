//
//  ContentView.swift
//  challenge
//
//  Created by Changjun Oh on 2022/11/17.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:Model
    
    var body: some View {
        TabView {
            
            VStack {
                Text("People")
                    .font(.title)
                    .bold()
                
                List(model.people) { p in
                    PersonView(person: p)
                }
            }
            .tabItem {
                Image(systemName: "person.2")
                    .environment(\.symbolVariants, .none)
            }
            
            VStack {
                Text("Display Preference")
                    .font(.title)
                    .bold()
                
                Toggle("Show name:", isOn: $model.showName)
                
                Toggle("Show address:", isOn: $model.showAddress)
                
                Toggle("Show company:", isOn: $model.showCompany)
                
                Toggle("Show years of experience:", isOn: $model.showYears)
                
                Spacer()
            }
            .tabItem {
                Image(systemName: "gearshape")
                    .environment(\.symbolVariants, .none)
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Model())
    }
}
