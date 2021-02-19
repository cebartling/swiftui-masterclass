//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Christopher Bartling on 2/18/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
