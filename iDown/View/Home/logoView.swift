//
//  logoView.swift
//  iDown
//
//  Created by Rahul choudhary on 13/03/25.
//

import SwiftUI

struct logoView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack (spacing: 4){
            Text("i".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30,alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        }//: HSTACK
    }
}

//MARK: - PREVIEW
#Preview {
    logoView()
        .padding()
}
