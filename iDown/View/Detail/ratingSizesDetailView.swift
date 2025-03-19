//
//  ratingSizesDetailView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct ratingSizesDetailView: View {
    //MARK: - PROPERTIES
    let sizes: [String] = ["XS", "S", "M", "L","XL"]
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .top,spacing: 3, content: {
            // 1. RATINGS
            VStack(alignment: .leading, spacing: 3,content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3,content: {
                    ForEach(1...5,id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28,alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(Color.white)
                            
                        })
                    }
                })
            })//: VSTACK
            
            Spacer()
            
            // 2. SIZES
            VStack(alignment: .trailing, spacing: 3,content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                
                HStack(alignment: .center, spacing: 5,content: {
                    ForEach(sizes, id: \.self) { size in
                            Button(action: {}, label: {
                            Text(size)
                                    .font(.footnote)
                                    .fontWeight(.heavy)
                                    .foregroundColor(colorGray)
                                    .frame(width: 28, height: 28, alignment: .center)
                                   
                                    .background(Color.white.cornerRadius(5))
                                    .background(
                                        RoundedRectangle(cornerRadius: 5).stroke(colorGray,lineWidth: 1)
                                    )
                        })
                    }
                })
            })
                
        })//: HSTACK
    }
}
//MARK: - PREVIEW
#Preview {
    ratingSizesDetailView()
        .padding()
}
