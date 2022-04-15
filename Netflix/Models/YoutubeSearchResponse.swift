//
//  YoutubeSearchResponse.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 16.04.22.
//

import Foundation

//items =     (
//            {
//        etag = "ZL83K-82x1HtSMVou_zqaRTo5aU";
//        id =             {
//            kind = "youtube#video";
//            videoId = "z4K2F_OALPQ";
//        };
//        kind = "youtube#searchResult";
//    }

struct YoutubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: VideoElementID
}

struct VideoElementID: Codable {
    let kind: String
    let videoId: String
}
