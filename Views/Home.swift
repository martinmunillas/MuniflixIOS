//
//  Home.swift
//  Muniflix
//
//  Created by Martin Munilla on 27-10-21.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        ZStack {
            Color("Gray").ignoresSafeArea()
            VStack {
                Logo()
                SearchBar()
                Spacer()
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
