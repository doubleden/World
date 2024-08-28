//
//  CellView.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct CellView: View {
    let title: String
    let subtitle: String
    let emoji: String
    let circleBackground: Gradient
    
    var body: some View {
        HStack(spacing: 20) {
            Circle()
                .foregroundStyle(circleBackground)
                .frame(maxWidth: 55)
                .overlay(Text(emoji).font(.title2))
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                Text(subtitle)
            }
            .foregroundStyle(.black)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CellView(
        title: "Мертвая",
        subtitle: "или прикидывается",
        emoji: "💀",
        circleBackground: Gradient(colors: [.blue, .green])
    )
}
