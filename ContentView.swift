//
//  ContentView.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 17/255, green: 17/255, blue: 17/255, opacity: 1).ignoresSafeArea()
            VStack {
                Image("MuniflixLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 100, alignment: .center)
                
                SignInView()
                Spacer()
            }.padding(.leading).padding(.trailing)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
