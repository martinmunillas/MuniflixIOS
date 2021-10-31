//
//  MovieViewModel.swift
//  Muniflix
//
//  Created by Martin Munilla on 28-10-21.
//

import Foundation

class MovieViewModel: ObservableObject {
    @Published var moviesInfo: MoviesData?
    
    init(){
        let url = URL(string: "https://muniflix.herokuapp.com/api/movies")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, res, err in
            do {
                if let jsonData = data {
                
                    let decodedData = try JSONDecoder().decode(MoviesData.self, from: jsonData)
                    
                    DispatchQueue.main.async {
                        self.moviesInfo = decodedData
                    }
                }
                
            } catch {
                print(err)
            }
        }.resume()
    }
}
