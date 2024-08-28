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
                VStack(spacing: 25) {
                    WorldLifeListView(cells: $worldVM.cells)
                    
                    ButtonView(title: "СОТВОРИТЬ") {
                        withAnimation {
                            worldVM.createRandomCell()
                        }
                    }
                }
                .padding()
                .onChange(of: worldVM.cells) { _, _ in
                    withAnimation {
                        if worldVM.isLastThreeElementsSame() {
                            worldVM.createLifeOrDeath()
                        }
                        
                        if !worldVM.isLifeCanLive() {
                            worldVM.killLife()
                        }
                    }
                }
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
