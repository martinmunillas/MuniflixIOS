//
//  Logo.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct Logo: View {
    var body: some View {
        Image("MuniflixLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 200, height: 100, alignment: .center)
    }
}

struct Logo_Previews: PreviewProvider {
    static var previews: some View {
        Logo()
    }
}
