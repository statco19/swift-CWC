//
//  challengeApp.swift
//  challenge
//
//  Created by Changjun Oh on 2022/11/17.
//

import SwiftUI

@main
struct challengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Model())
        }
    }
}
