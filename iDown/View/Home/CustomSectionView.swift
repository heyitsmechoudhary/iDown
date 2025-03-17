//
//  CustomSectionView.swift
//  iDown
//
//  Created by Rahul choudhary on 17/03/25.
//

import SwiftUI

struct CustomSectionView: View {
    //MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool
    
    //MARK: - BODY
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categoties".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }//: VSTACK
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
        
    }
}
//PREVIEW
#Preview {
    CustomSectionView(rotateClockwise: false)
        .padding()
        .background(colorBackground)
}
