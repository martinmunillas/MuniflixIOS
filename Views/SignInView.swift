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
    
    @State var isSignIn: Bool = true
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Sign In") {isSignIn = true}.foregroundColor(isSignIn ? .blue : .white)
                Spacer()
                Button("Sign Up") {isSignIn = false}.foregroundColor(!isSignIn ? .blue : .white)
                Spacer()
            }.foregroundColor(.white)
            Input("Email", $email)
            Input("Password", $password)
            if isSignIn {
                Button("Sign In!") {}
            } else {
                Button("Sign Up!") {}
            }
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
