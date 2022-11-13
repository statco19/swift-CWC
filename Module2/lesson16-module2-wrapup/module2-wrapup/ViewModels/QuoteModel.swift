//
//  QuoteModel.swift
//  module2-wrapup
//
//  Created by Changjun Oh on 2022/11/13.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
}
