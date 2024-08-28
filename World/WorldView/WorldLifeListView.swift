//
//  WorldLifeListView.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct WorldLifeListView: View {
    let cells: [CellType]
    
    var body: some View {
        List {
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
                case .death:
                    CellView(
                        title: "Умерла",
                        subtitle: "жаль этого добряка",
                        emoji: "⚰️",
                        circleBackground: Gradient(
                            colors: [.red, .orange]
                        )
                    )
                case .live:
                    CellView(
                        title: "Жизнь",
                        subtitle: "Ку-ку!",
                        emoji: "🐣",
                        circleBackground: Gradient(
                            colors: [.purple, .purple.opacity(0.5)]
                        )
                    )
                case .living:
                    CellView(
                        title: "Живая",
                        subtitle: "и шевелится!",
                        emoji: "💥",
                        circleBackground: Gradient(colors: [.yellow, .yellow.opacity(0.3)])
                    )
                }
            }
            .listRowBackground(Color.white)
        }

        .listRowSpacing(5)
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    WorldLifeListView(cells: CellType.getCells())
}
