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
                        worldVM.createCell()
                    }
                }
            }
            .navigationTitle("Клеточное наполнение")
            .toolbarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    WorldView()
}
