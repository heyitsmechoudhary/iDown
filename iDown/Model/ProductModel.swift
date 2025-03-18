//
//  ProductModel.swift
//  iDown
//
//  Created by Rahul choudhary on 18/03/25.
//

import Foundation

struct Product : Codable, Identifiable {
    var id : Int
    var name : String
    var image : String
    var price : Int
    var description : String
    var color : [Double]
    
    var red : Double { color[0] }
    var green : Double { color[1] }
    var blue : Double { color[2] }
    
    var formattedPrice : String {
        return "$\(price).00"
    }
}
