//
//  VideoModel.swift
//  AfricaApp
//
//  Created by Adriancys Jesus Villegas Toro on 8/7/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
// MARK: - Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
    
}
