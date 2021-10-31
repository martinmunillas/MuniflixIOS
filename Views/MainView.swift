//
//  MainView.swift
//  Muniflix
//
//  Created by Martin Munilla on 26-10-21.
//

import SwiftUI

struct MainView: View {
    @State var selected: Int
    
    init(_ selected: Int = 0) {
        self.selected = selected
        
        UITabBar.appearance().backgroundColor = UIColor(Color( red: 14/255, green: 14/255, blue: 14/255, opacity: 0.7))
        
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().isTranslucent = true
        print("starting views")
        
    }
    
    var body: some View {
        
        TabView(selection: $selected) {
            
            HomeView().tabItem {
                Image(systemName: "house").foregroundColor(.white)
                Text("Home")
            }.tag(0)
            MoviesView().tabItem {
                Image(systemName: "film").foregroundColor(.white)
                Text("Movies")
            }.tag(1)
            SeriesView().tabItem {
                Image(systemName: "tv").foregroundColor(.white)
                Text("Series")
            }.tag(2)
            Text("Hello, Favourites!").tabItem {
                Image(systemName: "heart").foregroundColor(.white)
                Text("Favourites")
            }.tag(3)
        }.accentColor(.red).foregroundColor(.white)
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
