//
//  ContentView.swift
//  firestore-demo
//
//  Created by Changjun Oh on 2022/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    @State var name = ""
    @State var notes = ""
    
    init() {
        model.getData()
    }
    
    var body: some View {
        VStack {
            List(model.list) { item in
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.name)
                        Text(item.notes)
                    }
                    
                    Spacer()
                    
                    Button {
                        model.updateDate(todoToUpdate: item)
                    } label: {
                        Image(systemName: "pencil")
                    }
                    .buttonStyle(.borderless)

                    
                    Button {
                        model.deleteData(todoToDelete: item)
                    } label: {
                        Image(systemName: "trash")
                            .environment(\.symbolVariants, .none)
                    }
                    .buttonStyle(.borderless)

                }
            }
            
            Divider()
            
            VStack(spacing: 5) {
                
                TextField("Name", text: $name)
                    .textFieldStyle(.roundedBorder)
                
                TextField("Notes", text: $notes)
                    .textFieldStyle(.roundedBorder)
                
                Button(action: {
                    model.addData(name: name, notes: notes)
                    
                    name = ""
                    notes = ""
                }, label: {
                    Text("Add Todo Item")
                })
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
