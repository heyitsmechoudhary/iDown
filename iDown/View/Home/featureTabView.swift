//
//  featureTabView.swift
//  iDown
//
//  Created by Rahul choudhary on 13/03/25.
//

import SwiftUI

struct featureTabView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                featureItemView(player: player)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }//:TABVIEW
        .tabViewStyle(PageTabViewStyle())
    }
}
//MARK: - PREVIEW
#Preview {
    featureTabView()
        .background(Color.gray)
}
