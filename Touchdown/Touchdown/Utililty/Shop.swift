//
//  Shop.swift
//  Touchdown
//
//  Created by Christopher Bartling on 3/4/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
