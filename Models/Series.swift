//
//  Series.swift
//  Muniflix
//
//  Created by Martin Munilla on 30-10-21.
//

import Foundation

struct Episode: Codable {
    var _id: String
    var name: String
    var number: Int32
    var description: String
    var src: String
    var season: String
    var cover: String
    
}

struct Season: Codable {
    var _id: String
    var number: Int32
    var serie: String
    var episodes: [Episode]
    
}

struct Series: Codable {
    var cast: [String]
    var _id: String
    var name: String
    var description: String
    var startYear: Int32
    var finalYear: Int32
    var clasification: Int32
    var cover: String
    var seasons: [Season]
    
}

struct SeriesData: Codable {
    var data:[Series]
    var message: String
}
