//
//  CreatProductRequest.swift
//  StoreApp
//
//  Created by Mina on 25/04/2023.
//

import Foundation
struct CreateProductRequest: Encodable {
    
    let title: String
    let price: Double
    let description: String
    let categoryId: Int
    let images: [URL]
    
}
