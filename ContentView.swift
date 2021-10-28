//
//  ContentView.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("Gray").ignoresSafeArea()
                SignInView().navigationBarHidden(true)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
