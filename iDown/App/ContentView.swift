//
//  ContentView.swift
//  iDown
//
//  Created by Rahul choudhary on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 0){
                    navigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(radius: 5)
                    
                    
                    ScrollView(.vertical,showsIndicators: false,content: {
                        VStack (spacing: 0){
                            featureTabView()
                                .frame(height: 320)
                                .padding(.vertical,20)
                            
                            CategoryGridView()
                            
                            titelView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout,spacing: 15, content: {
                                ForEach(products){ Product in
                                    productItemView(product: Product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation (.easeOut){
                                                shop.selectedProduct = Product
                                                shop.showingProduct = true
                                            }
                                        }
                                }//: LOOP
                            })//: GRID
                            .padding(15)
                            
                            titelView(title: "brands")
                            
                            brandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }//:VSTACK
                    })//SCROLL
                    
                }//: VSTACK
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                productDetailView()
                
            }
        }//:ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
}
//MARK: - PREVIEW
#Preview {
    ContentView()
        .environmentObject(Shop())
}
