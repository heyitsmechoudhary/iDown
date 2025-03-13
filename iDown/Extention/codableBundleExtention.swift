//
//  codableBundleExtention.swift
//  iDown
//
//  Created by Rahul choudhary on 13/03/25.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        // Locate the JSON file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in Bundle")
        }
        
        // Load the file data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from Bundle")
        }
        
        // Create a decoder
        let decoder = JSONDecoder()
        
        // Decode the data into an array of CoverImage
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from Bundle")
        }
                
        return loaded
    }
}
