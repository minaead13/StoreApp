//
//  Locale+Extensions.swift
//  StoreApp
//
//  Created by Mina on 24/04/2023.
//

import Foundation
extension Locale {
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
}
