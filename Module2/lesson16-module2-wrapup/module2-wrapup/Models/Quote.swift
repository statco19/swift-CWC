//
//  Quote.swift
//  module2-wrapup
//
//  Created by Changjun Oh on 2022/11/13.
//

import Foundation

class Quote: Identifiable, Decodable {
    
    var id:UUID?
    var image:String
    var quote:String
    var details:[String]
    var by:String
}
