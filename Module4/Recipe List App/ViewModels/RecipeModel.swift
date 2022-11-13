//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Changjun Oh on 2022/11/12.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // call a static function from DataService class
        self.recipes = DataService.getLocalData()
    }
    
}
