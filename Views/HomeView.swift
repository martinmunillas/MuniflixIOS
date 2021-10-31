//
//  HomeView.swift
//  Muniflix
//
//  Created by Martin Munilla on 27-10-21.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var movies = MovieViewModel()
    @ObservedObject var series = SeriesViewModel()
    
    var body: some View {
        ZStack {
            Color("Gray").ignoresSafeArea()
            ScrollView {
                
                VStack {
                    Logo()
                    
                    SearchBar()
                    PlayerView("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
                    Spacer()
                    VStack(alignment: .leading) {
                        
                        Text("Movies").font(.system(size: 24, weight: .bold, design: .default)).padding()
                        if movies.moviesInfo != nil {
                            ScrollView(.horizontal) {
                                
                                HStack {                ForEach(movies.moviesInfo?.data ?? [], id: \._id) { movie in
                                    MovieCard(movie)
                                }
                                }
                            }
                        } else {
                            
                            Text("Loading...")
                        }
                    }
                    VStack(alignment: .leading) {
                        
                        Text("Series").font(.system(size: 24, weight: .bold, design: .default)).padding()
                        if movies.moviesInfo != nil {
                            ScrollView(.horizontal) {
                                
                                HStack {                ForEach(series.seriesInfo?.data ?? [], id: \._id) { series in
                                    SeriesCard(series)
                                }
                                }
                            }
                        } else {
                            
                            Text("Loading...")
                        }
                    }
                }.padding()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
