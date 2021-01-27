//
//  VideoModel.swift
//  Africa
//
//  Created by Christopher Bartling on 1/26/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
