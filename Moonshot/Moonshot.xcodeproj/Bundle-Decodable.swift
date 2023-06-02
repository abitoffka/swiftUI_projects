//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Aigerim Abitayeva on 28.05.2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else  {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        let decoder = JSONDecoder()
        // to format data
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        // be specific about the timezone when you need it, we don;t need it now though
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        return loaded
    }
}
