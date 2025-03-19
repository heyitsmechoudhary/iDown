//
//  Shop.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import Foundation

class Shop : ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
