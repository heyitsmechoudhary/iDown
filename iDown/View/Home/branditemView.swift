//
//  branditemView.swift
//  iDown
//
//  Created by Rahul choudhary on 18/03/25.
//

import SwiftUI

struct branditemView: View {
    //MARK: - PROPERTIES
    var brand : Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1)
            )
    }
}
//MARK: - PREVIEW
#Preview {
    branditemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
