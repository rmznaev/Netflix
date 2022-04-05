//
//  APICaller.swift
//  Netflix
//
//  Created by Ramazan Abdullayev on 03.04.22.
//

import Foundation

struct Constants {
    static let baseURL = "https://api.themoviedb.org"
    static let API_KEY = "01ca7edc311279a7eed53a2cb6af6000"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @ escaping (String) -> Void) {
        guard let url = URL(string: "\(Constants.baseURL)/3/trending/all/day?api_key=\(Constants.API_KEY)") else { return }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else { return }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)
            } catch {
                print(error.localizedDescription)
            }
        }
        
        task.resume()
    }
}
