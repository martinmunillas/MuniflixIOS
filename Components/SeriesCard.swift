//
//  SeriesCard.swift
//  Muniflix
//
//  Created by Martin Munilla on 30-10-21.
//

import SwiftUI
import Kingfisher

struct SeriesCard: View {
    @State var series: Series
    
    init(_ series: Series) {
        self.series = series
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KFImage(URL(string: series.cover)).resizable().scaledToFill().frame(width: 250, height: 400, alignment: .center).clipped()
            Color(white: 0, opacity: 0.3)
            VStack(alignment: .leading) {
                Text(series.name).font(.system(size: 20, weight: .bold, design: .default))
                Text("\(String(series.startYear)) - \(String(series.finalYear)) | \(series.clasification == 0 ? "All ages" : "+\(series.clasification)") | \(series.seasons.count)S")
            }.padding()
        }.frame(width: 250, height: 400, alignment: .bottomLeading).padding(5)
    }
}

struct SeriesCard_Previews: PreviewProvider {
    static var previews: some View {
        MainView(0)
    }
}
