//
//  DataService.swift
//  Recipe List App
//
//  Created by Changjun Oh on 2022/11/12.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // parse local json file
        
        // Get an url path to the json
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is nil, otherwise return an empty recipe array
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create an url object
        let url = URL(filePath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // Return the Recipes
                return recipeData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        
        return [Recipe]()
    }
}
