//
//  SignInView.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Email", text: $email).foregroundColor(.white).placeholder(when: email.isEmpty) {
                Text("Email").foregroundColor(.white)
            }
            TextField("Password", text: $password)
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
