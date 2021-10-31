//
//  MoviesView.swift
//  Muniflix
//
//  Created by Martin Munilla on 28-10-21.
//

import SwiftUI

struct MoviesView: View {
    
    @ObservedObject var movies = MovieViewModel()
    
    
    var body: some View {
        ZStack {
            Color("Gray").ignoresSafeArea()
            if movies.moviesInfo != nil {
                ScrollView {
                    Text("Movies").font(.system(size: 24, weight: .bold)).padding(.vertical)
                    
                    ForEach(movies.moviesInfo?.data ?? [], id: \._id) { movie in
                        MovieCard(movie)
                        
                    }
                }
            } else {
                
                Text("Loading...")
            }
        }
    }
}

struct MoviesView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(1)
    }
}
