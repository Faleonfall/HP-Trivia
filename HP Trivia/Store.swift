//
//  Store.swift
//  HP Trivia
//
//  Created by Volodymyr Kryvytskyi on 03.12.2024.
//

import Foundation
import StoreKit

enum BookStatus {
    case active
    case inactive
    case locked
}

@MainActor
class Store: ObservableObject {
    @Published var books: [BookStatus] = [.active, .active, .inactive, .locked, .locked, .locked, .locked]
    @Published var products: [Product] = []
    
    private var productIds = ["hp4", "hp5", "hp6", "hp7"]
    
    func loadProducts() async {
        do {
            products = try await Product.products(for: productIds)
        } catch {
            print(error)
        }
    }
}
