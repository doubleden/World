//
//  ButtonView.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .padding()
                .foregroundStyle(.white)
        })
        .buttonStyle(CustomButtonStyle())
    }
}

fileprivate struct CustomButtonStyle: ButtonStyle {
    @ViewBuilder
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .background(.mainButton)
            .clipShape(.rect(cornerRadius: 10))
            .scaleEffect(configuration.isPressed ? 0.9 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

#Preview {
    ButtonView(title: "СОТВОРИТЬ", action: {})
}
