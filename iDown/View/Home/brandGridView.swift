//
//  brandGridView.swift
//  iDown
//
//  Created by Rahul choudhary on 18/03/25.
//

import SwiftUI

struct brandGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [], content: {
                
                //GRID ITEM
                ForEach(brands){brand in
                    branditemView(brand: brand)
                }
                            
            })//:GRID
            .frame(height: 220)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })//:SCROLL
    }
}
//MARK: - PREVIEW
#Preview {
    brandGridView()
        .padding()
        .background(colorBackground)
}
