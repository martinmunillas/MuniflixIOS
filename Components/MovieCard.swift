//
//  MovieCard.swift
//  Muniflix
//
//  Created by Martin Munilla on 28-10-21.
//

import SwiftUI
import Kingfisher

struct MovieCard: View {
    @State var movie: Movie
    
    init(_ movie: Movie) {
        self.movie = movie
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(URL(string: movie.cover)).resizable().scaledToFill().frame(width: 250, height: 400, alignment: .center).clipped()
            Color(white: 0, opacity: 0.3)
            VStack(alignment: .leading) {
                Text(movie.name).font(.system(size: 20, weight: .bold, design: .default))
                Text("\(String(movie.year) ) | \(movie.clasification == "0" ? "All ages" : "+\(movie.clasification)") | \(movie.duration) min.")
            }.padding()
        }.frame(width: 250, height: 400, alignment: .bottomLeading).padding(5)
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MainView(1)
    }
}
