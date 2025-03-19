//
//  topPartDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct topPartDetailView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated: Bool = false
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 6, content: {
            // 1. PRICE
            VStack(alignment: .leading, spacing: 6,content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            })//:VSTACK
            .offset(y: isAnimated ? -50 : -75)
            
            Spacer()
            // 2. PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0 : -35)
        })//: HSTACK
        .onAppear(
            perform: {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isAnimated.toggle()
                }
            }
        )
    }
}
//MARK: - PREVIEW
#Preview {
    topPartDetailView()
        .environmentObject(Shop())
        .padding()
}
