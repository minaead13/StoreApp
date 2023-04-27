//
//  StoreModel.swift
//  StoreApp
//
//  Created by Mina on 24/04/2023.
//

import Foundation
@MainActor //Assign to mainQueue
class StoreModel: ObservableObject {
    
    let client = StoreHTTPClient()
    
    @Published var categories : [Category] = []
    @Published var products: [Product] = []
    
    func fetchCategories() async throws {
        categories = try await client.load(Resource(url: URL.allCatogries))
       
    }
    
    func fetshProductsByCategory(_ categoryId: Int) async throws {
        products = try await client.load(Resource(url: URL.productsByCategory(categoryId)))
    }
    
    func saveProduct(_ createProductRequest: CreateProductRequest) async throws {
        let data = try JSONEncoder().encode(createProductRequest)
        let product: Product = try await client.load(Resource(url: URL.saveProduct, method: .post(data)))
         products.append(product)
    }
}
