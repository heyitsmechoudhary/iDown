//
//  customShapeView.swift
//  iDown
//
//  Created by Rahul choudhary on 19/03/25.
//

import SwiftUI

struct customShapeView: Shape {
    //MARK: - PROPERTIES
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight],cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }

}
//MARK: - PREVIEW
#Preview {
    customShapeView()
        .padding()
}
