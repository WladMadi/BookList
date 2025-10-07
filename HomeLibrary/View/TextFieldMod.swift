//
//  TextFieldMod.swift
//  HomeLibrary
//
//  Created by Влад Мади on 07.10.2025.
//

import SwiftUI

struct TextFieldMod: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 2)
                    .fill(.gray.opacity(0.3))
            }
    }
}
