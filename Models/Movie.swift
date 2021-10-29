//
//  Movie.swift
//  Muniflix
//
//  Created by Martin Munilla on 28-10-21.
//

import Foundation

struct Movie: Codable {
    var cast: [String]
    var _id: String
    var name: String
    var description: String
    var year: Int32
    var duration: Int32
    var clasification: String
    var src: String
    var cover: String
    var director: String
    
}

struct MoviesData: Codable {
    var data:[Movie]
    var message: String
}

