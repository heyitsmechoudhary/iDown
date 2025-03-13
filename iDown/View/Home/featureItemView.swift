//
//  featureItemView.swift
//  iDown
//
//  Created by Rahul choudhary on 13/03/25.
//

import SwiftUI

struct featureItemView: View {
    //MARK: - PROPERTIES
    let player : Player
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//MARK: - PREVIEW
#Preview {
    featureItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
