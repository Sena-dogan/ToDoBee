//
//  TVSeriesModel.swift
//  TodoBee
//
//  Created by Zeynep Sena Doğan on 23.08.2024.
//

import Foundation

struct TVSeries: Identifiable, Decodable {
    let id: Int
    let title: String
    let posterPath: String?
    let originalLanguage: String
    let overview: String
    let firstAirDate: String
    let voteAverage: Double
    let voteCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case title = "name"
        case posterPath = "poster_path"
        case originalLanguage = "original_language"
        case overview
        case firstAirDate = "first_air_date"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
    
    var posterURL: URL? {
        if let posterPath = posterPath {
            return URL(string: "https://image.tmdb.org/t/p/w500\(posterPath)")
        }
        return nil
    }
}
