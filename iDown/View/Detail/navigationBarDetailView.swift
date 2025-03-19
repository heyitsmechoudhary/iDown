//
//  navigationBarDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct navigationBarDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
                    
            })
        }//:HSTACK
    }
}
//MARK: - PREVIEW
#Preview {
    navigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
