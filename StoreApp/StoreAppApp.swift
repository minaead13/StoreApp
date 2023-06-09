//
//  StoreAppApp.swift
//  StoreApp
//
//  Created by Mina on 24/04/2023.
//

import SwiftUI

@main
struct StoreAppApp: App {
    @StateObject private var storeModel = StoreModel()
    
    var body: some Scene {
        WindowGroup {
            CategoryListScreen().environmentObject(storeModel)
        }
    }
}
