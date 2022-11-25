//
//  ContentView.swift
//  ImagePickerDemo
//
//  Created by Changjun Oh on 2022/11/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPickerShowing = false
    @State var selectedImage:UIImage?
    
    var body: some View {
        VStack {
            
            if selectedImage != nil {
                Image(uiImage: selectedImage!)
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            
            Button {
                
                isPickerShowing = true
                
            } label: {
                Text("Select a photo")
            }
            .sheet(isPresented: $isPickerShowing) {
                // Image Picker
                ImagePicker(selectedImage: $selectedImage, isPickerShowing: $isPickerShowing)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
