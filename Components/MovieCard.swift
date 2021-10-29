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
        ZStack {
            KFImage(URL(string: movie.cover)).resizable().aspectRatio( contentMode: .fill).frame(width: 250, height: 400, alignment: .center)
        }
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MainView(1)
    }
}
