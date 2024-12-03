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
    @StateObject private var game = Game()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .environmentObject(game)
                .task {
                    await store.loadProducts()
                }
        }
    }
}
