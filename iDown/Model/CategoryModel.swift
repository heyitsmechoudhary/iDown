//
//  CategoryModel.swift
//  iDown
//
//  Created by Rahul choudhary on 17/03/25.
//

import Foundation

struct Category : Codable, Identifiable {
    var id : Int
    var name : String
    var image : String
}
