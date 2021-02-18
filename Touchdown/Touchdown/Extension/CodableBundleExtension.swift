//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Christopher Bartling on 2/17/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from the bundle.")
        }

        let decoder = JSONDecoder()
        guard let decodeData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from the bundle.")
        }

        return decodeData
    }
}
