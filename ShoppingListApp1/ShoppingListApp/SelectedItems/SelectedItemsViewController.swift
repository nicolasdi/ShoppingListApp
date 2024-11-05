//
//  SelectedItemsViewController.swift
//  ShoppingListApp
//
//  Created by Diana Nicolas on 31/10/24.
//

import UIKit

class SelectedItemsViewController: UIViewController {
    
    @IBOutlet var selected: UILabel! = UILabel()
    var selectedItems: [Product] = []
    var total: Float = 0.0
    
    // Create string for Products
    let joinProducts: ([Product]) -> String = { products in
        return products.map { $0.description }.joined(separator: "\n")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let textProducts = joinProducts(selectedItems)
        let total = selectedItems.reduce(0.0) { $0 + $1.price }
        if (selectedItems.count == 0) {
            selected.text = "Articulos a comprar:" + "\n\n\n" + "Oops! Aún no hay nada en tu carrito" + "\n\n\n" + "Total: $\(total)"
        } else {
            selected.text = "Articulos a comprar:" + "\n\n\n" + textProducts + "Total: $\(total)" + "\n\n¡Gracias por su compra!"
        }
    }
    



}
