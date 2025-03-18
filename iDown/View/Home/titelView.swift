//
//  titelView.swift
//  iDown
//
//  Created by Rahul choudhary on 18/03/25.
//

import SwiftUI

struct titelView: View {
    //MARK: - PROPERTIES
    var title : String
    //MARK: - BODY
    var body: some View {
        HStack {
            Text(title.uppercased())
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//:HSTACK
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

//MARK: - PREVIEW
#Preview {
    titelView(title: "Helmate")
        .padding()
        .background(colorBackground)
}
