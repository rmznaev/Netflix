//
//  Movie.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 05.04.22.
//

/*
 
 {
adult = 0;
"backdrop_path" = "/x747ZvF0CcYYTTpPRCoUrxA2cYy.jpg";
"genre_ids" =             (
 28,
 12,
 878
);
id = 406759;
"media_type" = movie;
"original_language" = en;
"original_title" = Moonfall;
overview = "A mysterious force knocks the moon from its orbit around Earth and sends it hurtling on a collision course with life as we know it.";
popularity = "3215.556";
"poster_path" = "/odVv1sqVs0KxBXiA8bhIBlPgalx.jpg";
"release_date" = "2022-02-03";
title = Moonfall;
video = 0;
"vote_average" = "6.5";
"vote_count" = 465;
}
 
*/

import Foundation

struct TrendingMoviesResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable {
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
