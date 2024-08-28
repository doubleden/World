//
//  WorldView.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct WorldView: View {
    @State var worldVM = WorldViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                MainBackground()
                VStack {
                    WorldLifeListView(cells: worldVM.cells)
                    
                    ButtonView(title: "СОТВОРИТЬ") {
                        withAnimation {
                            worldVM.createCell()
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("Клеточное наполнение")
            .toolbarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        worldVM.cells = []
                    }, label: {
                        Image(systemName: "trash")
                            .tint(.white)
                    })
                }
            }
        }
    }
}

#Preview {
    WorldView()
}
