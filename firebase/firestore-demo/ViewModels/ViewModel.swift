//
//  ViewModel.swift
//  firestore-demo
//
//  Created by Changjun Oh on 2022/11/20.
//

import Foundation
import FirebaseCore
import FirebaseFirestore

class ViewModel: ObservableObject{
    
    @Published var list = [Todo]()
    private let db = Firestore.firestore()
    
    func updateDate(todoToUpdate:Todo) {
//        let db = Firestore.firestore()
        
        db.collection("todos").document(todoToUpdate.id).setData(["name":"Updated: \(todoToUpdate.name)"], merge: true) { err in
            
            if let err = err {
                print("Error updating the document: \(err)")
            } else {
                self.getData()
            }
        }
    }
    
    func deleteData(todoToDelete:Todo) {
//        let db = Firestore.firestore()
        
        db.collection("todos").document(todoToDelete.id).delete { err in
            if let err = err {
                print("Error deleting the document: \(err)")
            } else {
                
                // Update UI from the main thread
                DispatchQueue.main.async {
                    self.list.removeAll { todo in
                        return todo.id == todoToDelete.id
                    }
                }
                
            }
        }
    }
    
    func addData(name:String, notes:String) {
//        let db = Firestore.firestore()
        
        //        var ref: DocumentReference? = nil
        if name != "" && notes != "" {
            db.collection("todos").addDocument(data: [
                "name":name,
                "notes":notes
            ]) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                } else {
                    self.getData()
                }
            }
        } else {
            print("Name or Notes is empty.")
        }
    }
    
    func getData() {
//        let db = Firestore.firestore()
        
        db.collection("todos").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                
                // To change UI in the main thread
                DispatchQueue.main.async {
                    
                    self.list = querySnapshot!.documents.map { doc in
                        return Todo(id: doc.documentID, name: doc["name"] as? String ?? "", notes: doc["notes"] as? String ?? "")
                    }
                    
                }
                
            }
        }
    }
    
}
