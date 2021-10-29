//
//  HomeView.swift
//  Muniflix
//
//  Created by Martin Munilla on 27-10-21.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            Color("Gray").ignoresSafeArea()
            VStack {
                Logo()
                SearchBar()
                PlayerView("https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
