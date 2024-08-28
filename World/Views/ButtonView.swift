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
        VStack {
            Button(title, action: action)
            .padding()
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .font(.headline)
            .background(.mainButton)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding()
    }
}

#Preview {
    ButtonView(title: "СОТВОРИТЬ", action: {})
}
