//
//  WorldViewModel.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import Observation

@Observable
final class WorldViewModel {
    let cells: [CellType] = CellType.getCells()
    
    func createCell() {
        
    }
}
