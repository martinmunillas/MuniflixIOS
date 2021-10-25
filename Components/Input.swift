//
//  Input.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct Input: View {
    var placeholder: String
    var label: String
    var text: Binding<String>
    var isSecure: Bool
    @State var show: Bool
    
    init(_ initLabel: String, _ initPlaceholder: String, _ initText: Binding<String>,secure: Bool = false) {
        placeholder = initPlaceholder
        text = initText
        label = initLabel
        isSecure = secure
        show = !secure
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(label)
            HStack {
                if !show {
                    SecureField("",text:  text).placeholder(when: text.wrappedValue.isEmpty) {
                        Text(placeholder).foregroundColor(.gray)
                    }
                } else {
                    TextField("", text: text)
                        .placeholder(when: text.wrappedValue.isEmpty) {
                            Text(placeholder).foregroundColor(.gray)
                        }
                    
                }
                if isSecure {
                    
                    Button(action: {show.toggle()}) {
                        Image(systemName: !show ? "eye": "eye.slash")
                    }
                }
            }
        }.foregroundColor(.white)
    }
}


struct Input_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
