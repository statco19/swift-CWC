//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Changjun Oh on 2022/11/12.
//

import SwiftUI

struct RecipeDetailView: View {
    
    // Left unassigned since the variable will receive a recipe from RecipeListView
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
            
                // MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.vertical, 5.0)
                    
                    ForEach(recipe.ingredients) { item in
                        Text("• " + item.name)
                        
                    }
                }.padding(.horizontal, 10)
                
                // MARK: Divider
                Divider()
                    
                
                // MARK: Directions
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.vertical, 5)
                    ForEach(0..<recipe.directions.count, id: \.self) { i in
                        Text(String(i+1) + ". " + recipe.directions[i])
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.horizontal, 10.0)
            }
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        // Create a dummy recipe ans pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
