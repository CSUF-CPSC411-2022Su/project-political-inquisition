//
//  File.swift
//  Political Iniquisition
//
//  Created by csuftitan on 6/28/22.
//

import SwiftUI

struct TextEntry: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(2)
            .border(Color.black)
            .background(Color.white)
    }
}

struct ButtonDesign: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.black)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}
