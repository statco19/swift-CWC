//
//  firestore_demoApp.swift
//  firestore-demo
//
//  Created by Changjun Oh on 2022/11/20.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct firestore_demoApp: App {
    // register app delegate for Firebase setup
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
//    init() {
//        FirebaseApp.configure()
//    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
