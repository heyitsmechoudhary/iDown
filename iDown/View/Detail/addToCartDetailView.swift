//
//  addToCartDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct addToCartDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//: BUTTON
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}
//MARK: - PREVIEW
#Preview {
    addToCartDetailView()
        .environmentObject(Shop())
        .padding()
}
