//
//  navigationBarView.swift
//  iDown
//
//  Created by Rahul choudhary on 13/03/25.
//

import SwiftUI

struct navigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating: Bool = false
    
    //MARK: - BODY
    var body: some View {
        HStack{
           Button(action: {
                //some Action
           } ,label: {
               Image(systemName: "magnifyingglass")
                   .font(.title)
                   .foregroundColor(.black)
           })
            Spacer()
            
            logoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x:0, y: isAnimating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeInOut(duration: 0.5)){
                        isAnimating.toggle()
                    }
                })
            
            Spacer()
            Button(action: {
                 //some Action
            } ,label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14,alignment: .center)
                        .offset(x: 13, y: -10)
                }
            })
        }//: HSTACK
    }
}

//MARK: - PREVIEW
#Preview {
    navigationBarView()
        .padding()
}
