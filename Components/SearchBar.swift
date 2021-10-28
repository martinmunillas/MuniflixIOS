//
//  SearchBar.swift
//  Muniflix
//
//  Created by Martin Munilla on 27-10-21.
//

import SwiftUI

struct SearchBar: View {
    
    @State var searchText: String = ""
    
    func search() {
        print(searchText)
    }
    
    var body: some View {
        HStack {
            
            Button(action: {}) {
                Image(systemName: "magnifyingglass").foregroundColor(searchText.isEmpty ? .white : .blue)
            }
            
            ZStack(alignment: .leading) {
                if searchText.isEmpty {
                    Text("Search movies or series")
                }
                TextField("", text: $searchText)
            }
        }.padding(11.0).background(Color(red: 60/255, green: 60/255, blue: 60/255, opacity: 1)).cornerRadius(8).foregroundColor(.white)
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
