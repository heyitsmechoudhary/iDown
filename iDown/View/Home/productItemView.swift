//
//  productItemView.swift
//  iDown
//
//  Created by Rahul choudhary on 18/03/25.
//

import SwiftUI

struct productItemView: View {
    //MARK: - PROPERTIES
    
    var product : Product
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading,spacing: 6, content: {
            // 1. PHOTO
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            // 2. NAME
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // 3. PRICE
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//: VSTACK
    }
}

//PREVIEW
#Preview {
    productItemView(product: products[0])
        .padding()
        .background(colorBackground)
}
