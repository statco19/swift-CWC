//
//  DataService.swift
//  pizza-demo
//
//  Created by Changjun Oh on 2022/11/12.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Pizza] {
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Pizza]()
        }
        
        let url = URL(filePath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                let pizzaData = try decoder.decode([Pizza].self, from: data)
                
                for p in pizzaData {
                    p.id = UUID()
                }
                
                return pizzaData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        
        return [Pizza]()
    }
}
