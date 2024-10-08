//
//  WorldLifeListView.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct WorldLifeListView: View {
    @Binding var cells: [CellType]
    
    var body: some View {
        ScrollView {
            ForEach(cells, id: \.self) { cell in
                switch cell {
                case .dead:
                    CellView(
                        title: "Мёртвая",
                        subtitle: "или прикидывается",
                        emoji: "💀",
                        circleBackground: Gradient(
                            colors: [.blue, .green]
                        )
                    )
                    .transition(.move(edge: .bottom))
                    
                case .death:
                    CellView(
                        title: "Умерла",
                        subtitle: "жаль этого добряка",
                        emoji: "⚰️",
                        circleBackground: Gradient(
                            colors: [.red, .orange]
                        )
                    )
                    .transition(.scale)
                case .life:
                    CellView(
                        title: "Жизнь",
                        subtitle: "Ку-ку!",
                        emoji: "🐣",
                        circleBackground: Gradient(
                            colors: [.purple, .purple.opacity(0.48)]
                        )
                    )
                    .transition(.scale)
                case .live:
                    CellView(
                        title: "Живая",
                        subtitle: "и шевелится!",
                        emoji: "💥",
                        circleBackground: Gradient(colors: [.orange, .yellow.opacity(0.4)])
                    )
                    .transition(.move(edge: .bottom))
                }
            }
            .listRowBackground(Color.white)
        }
        .listRowSpacing(5)
        .scrollContentBackground(.hidden)
        .defaultScrollAnchor(.bottom)
    }
}


#Preview {
    WorldLifeListView(cells: .constant(CellType.getCells()))
}
