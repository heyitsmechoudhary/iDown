//
//  CategoryGridView.swift
//  iDown
//
//  Created by Rahul choudhary on 17/03/25.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columnSpacing,pinnedViews: [], content: {
                
                //GRID ITEM
                Section(header: CustomSectionView(rotateClockwise: false), footer: CustomSectionView(rotateClockwise: true)) {
                    ForEach(categories){Category in
                        categoryItemView(category: Category)
                    }
                }
                
            })//:GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        })//:SCROLL
    }
}

//MARK: - PREVIEW
#Preview {
    CategoryGridView()
        .padding()
        .background(colorBackground )
}
