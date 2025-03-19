//
//  productDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct productDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        VStack (alignment: .leading,spacing: 5, content: {
            // 1. NAVBAR
            navigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            // 2. HEADER
            headerDetailView()
                .padding(.horizontal)
            // 3. DETAIL TOP PART
            topPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // 4. DETAIL BOTTOM PART
            VStack(alignment: .center,spacing: 0,content: {
                
                // 5. RATINGS + SIZES
                ratingSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                
                // 6. DESCRIPTION
                ScrollView(.vertical,showsIndicators: false,content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                })//: SCROLL
                
                // 7. QUANTITY + FAVOURITE
                quantityFavouriteDetailView()
                    .padding(.vertical,10)
                // 8. ADD TO CART
                addToCartDetailView()
                    .padding(.bottom,20)
                
            })//: VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(customShapeView())
                    .padding(.top,-105)
            )
            
        })//: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all,edges: .all)
        )
    }
}
//MARK: - PREVIEW
#Preview {
    productDetailView()
        .environmentObject(Shop())
}
