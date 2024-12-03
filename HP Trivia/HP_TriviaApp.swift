//
//  HP_TriviaApp.swift
//  HP Trivia
//
//  Created by Volodymyr Kryvytskyi on 30.11.2024.
//

import SwiftUI

@main
struct HP_TriviaApp: App {
    @StateObject private var store = Store()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
        }
    }
}
