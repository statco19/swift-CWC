//
//  Pizza.swift
//  pizza-demo
//
//  Created by Changjun Oh on 2022/11/12.
//

import Foundation

class Pizza: Identifiable, Decodable {
    
    var id:UUID?
    
    var Name = ""
    var image:String
    var Topping1 = ""
    var Topping2 = ""
    var Topping3 = ""
    
}
