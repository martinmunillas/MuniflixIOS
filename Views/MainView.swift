//
//  MainView.swift
//  Muniflix
//
//  Created by Martin Munilla on 26-10-21.
//

import SwiftUI

struct MainView: View {
    init() {
        
        UITabBar.appearance().backgroundColor = UIColor(Color( red: 14/255, green: 14/255, blue: 14/255, opacity: 0.7))
        
        UITabBar.appearance().unselectedItemTintColor = .white
        UITabBar.appearance().isTranslucent = true
        print("starting views")
        
    }
    
    var body: some View {
        
        TabView() {
            
            Home().tabItem {
                Image(systemName: "house").foregroundColor(.white)
                Text("Home")
            }
            Text("Hello, Movies!").tabItem {
                Image(systemName: "film").foregroundColor(.white)
                Text("Movies")
            }
            Text("Hello, Series!").tabItem {
                Image(systemName: "tv").foregroundColor(.white)
                Text("Series")
            }
            Text("Hello, Favourites!").tabItem {
                Image(systemName: "heart").foregroundColor(.white)
                Text("Favourites")
            }
        }.accentColor(.red).foregroundColor(.white)
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
