//
//  SeriesView.swift
//  Muniflix
//
//  Created by Martin Munilla on 31-10-21.
//

import SwiftUI

struct SeriesView: View {
    @ObservedObject var series = SeriesViewModel()
    
    var body: some View {
        ZStack {
            Color("Gray").ignoresSafeArea()
            if series.seriesInfo != nil {
                ScrollView {
                    Text("Series").font(.system(size: 24, weight: .bold)).padding(.vertical)
                    
                    ForEach(series.seriesInfo?.data ?? [], id: \._id) { movie in
                        SeriesCard(movie)
                        
                    }
                }
            } else {
                
                Text("Loading...")
            }
        }
    }
}

struct SeriesView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(2)
    }
}
