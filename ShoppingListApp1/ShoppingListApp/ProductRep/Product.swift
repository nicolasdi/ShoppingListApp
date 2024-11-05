//
//  Product.swift
//  ShoppingListApp
//
//  Created by Diana Nicolas on 01/11/24.
//

import Foundation
struct Product: Equatable, CustomStringConvertible {
    let name: String
    let price: Double
    let imageName: String // Nombre de la imagen en los assets
    
    // description methor override
    var description: String {
        return "\(name) \nPrecio: $\(String(format: "%.2f", price))\n\n"
    }
}
