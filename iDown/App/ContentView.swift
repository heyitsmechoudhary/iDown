//
//  ContentView.swift
//  iDown
//
//  Created by Rahul choudhary on 12/03/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ZStack {
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
                        
                        FooterView()
                            .padding(.horizontal)
                    }//:VSTACK
                })//SCROLL
                
            }//: VSTACK
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }//:ZSTACK
        .ignoresSafeArea(.all,edges: .top)
    }
}
//MARK: - PREVIEW
#Preview {
    ContentView()
}
