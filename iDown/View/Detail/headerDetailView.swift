//
//  headerDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct headerDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
            
        })//: VSTACK
        .foregroundColor(.white)
    }
}
//MARK: - PREVIEW
#Preview {
    headerDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
