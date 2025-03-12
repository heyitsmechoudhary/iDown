//
//  FooterView.swift
//  iDown
//
//  Created by Rahul choudhary on 12/03/25.
//

import SwiftUI

struct FooterView: View {
    let currentYear = Calendar.current.component(.year, from: Date())
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer best quality football helmate in the market. at the very reasonable price")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright © \(currentYear) iDown. All rights reserved to IIIION.")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }//: VSTACK
        .padding()
    }
}

#Preview {
    FooterView()
        .background(colorBackground)
}
