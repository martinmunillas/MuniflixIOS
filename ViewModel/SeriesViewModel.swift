//
//  SeriesViewModel.swift
//  Muniflix
//
//  Created by Martin Munilla on 30-10-21.
//

import Foundation

class SeriesViewModel: ObservableObject {
    @Published var seriesInfo: SeriesData?
    
    init(){
        let url = URL(string: "https://muniflix.herokuapp.com/api/series")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, res, err in
            do {
                if let jsonData = data {
                    print(jsonData)
                
                    let decodedData = try JSONDecoder().decode(SeriesData.self, from: jsonData)
                    
                    DispatchQueue.main.async {
                        self.seriesInfo = decodedData
                    }
                }
                
            } catch {
                print(err)
            }
        }.resume()
    }
}
