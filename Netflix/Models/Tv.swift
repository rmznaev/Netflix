//
//  Tv.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 09.04.22.
//

import Foundation

struct TrendingTvResponse: Codable {
    let results: [Tv]
}

struct Tv: Codable {
    let id: Int
    let vote_count: Int
    let vote_average: Double
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let release_date: String?
}
