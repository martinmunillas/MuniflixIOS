//
//  Input.swift
//  Muniflix
//
//  Created by Martin Munilla on 24-10-21.
//

import SwiftUI

struct Input: View {
    var placeholder: String
    var text: Binding<String>
    
    init(_ initPlaceholder: String, _ initText: Binding<String>) {
        placeholder = initPlaceholder
        text = initText
    }
    
    var body: some View {
        TextField("", text: text).foregroundColor(.white)
            .placeholder(when: text.wrappedValue.isEmpty) {
                Text(placeholder).foregroundColor(.gray)
        }
    }
}
