//
//  Model.swift
//  challenge
//
//  Created by Changjun Oh on 2022/11/17.
//

import Foundation

class Model: ObservableObject {
    
    @Published var showName = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYears = true
    
    var people = [
        Person(
            name: "Inigo Montoya",
            address: "555 Youkilledmyfather Street",
            company: "CodeWithChris",
            yearsOfExperience: 35
        ),
        Person(
            name: "Edna Mode",
            address: "123 Nocape Lane",
            company: "CodeWithChris",
            yearsOfExperience: 177
        ),
        Person(
            name: "Travis Bickle",
            address: "99 Youtalkingtome Road",
            company: "CodeWithChris",
            yearsOfExperience: 99
        ),
        Person(
            name: "Walter Sobchak",
            address: "8 Dude Place",
            company: "CodeWithChris",
            yearsOfExperience: 23
        ),
        Person(
            name: "Julius Winnfield",
            address: "25 Ezekiel Ave",
            company: "CodeWithChris",
            yearsOfExperience: 17
        )
    ]
}

struct Person: Identifiable {
    var id = UUID()
    var name:String
    var address:String
    var company:String
    var yearsOfExperience:Int
}
