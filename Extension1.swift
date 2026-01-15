//
//  Extension1.swift
//  RedBook
//
//  Created by user257633 on 2/26/24.
//

import SwiftUI

// 自定义视图修饰符
struct ButtonStyleWhite: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.black)
            .padding()
            .background(Color.white)
            .cornerRadius(5)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.gray, lineWidth: 1)
            )
    }
}

// View扩展，以便于所有视图可以使用.buttonStyleWhite()修饰符
extension View {
    func buttonStyleWhite() -> some View {
        self.modifier(ButtonStyleWhite())
    }
}
