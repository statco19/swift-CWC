//
//  DataService.swift
//  module2-wrapup
//
//  Created by Changjun Oh on 2022/11/13.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Quote] {
        
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        guard pathString != nil else {
            return [Quote]()
        }
        
        let url = URL(filePath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            
            do {
                let quoteData = try decoder.decode([Quote].self, from: data)
                
                for q in quoteData {
                    q.id = UUID()
                }
                
                return quoteData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Quote]()
    }
}
