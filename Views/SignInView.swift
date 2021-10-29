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
    
    @State var isSignIn = true
    
    @State var isHomeViewActive = false
    
    /// <#Description#>
    var body: some View {
        VStack {
            Group {
                
                Spacer()
                Logo()
                Spacer()
            }
            HStack {
                Spacer()
                Button("Sign In") {isSignIn = true}.foregroundColor(isSignIn ? .blue : .white)
                Spacer()
                Button("Sign Up") {isSignIn = false}.foregroundColor(!isSignIn ? .blue : .white)
                Spacer()
            }.foregroundColor(.white)
            Group {
                Spacer()
                if !isSignIn {
                    Text("Choose a profile image").foregroundColor(.white).font(.headline)
                    ZStack {
                        
                        Image("ProfileExample").resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .center)
                        Image(systemName: "camera").resizable().aspectRatio(contentMode: .fit).foregroundColor(.white).frame(width: 40, height: 40, alignment: .center)
                    }.padding()
                }
                Input("Email", "yourname@example.com", $email)
                Input("Password", "hello123",$password, secure: true)
                if !isSignIn {
                    Input("Repeat Password", "hello123",$password, secure: true)
                }
                Spacer()
            }
            Group {
                Button(action: {isHomeViewActive = true}) {
                    Text(isSignIn ? "Sign In!":"Sign Up!")
                        .padding().background(Color.red).foregroundColor(.white).cornerRadius(7)
                    
                }
                Text("Did you forget your password").foregroundColor(.white)
                Spacer()
                NavigationLink(destination: MainView().navigationBarBackButtonHidden(true), isActive: $isHomeViewActive, label: { EmptyView() })
                
            }
        }.padding(.horizontal)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
