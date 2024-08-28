//
//  WorldViewModel.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import Observation

@Observable
final class WorldViewModel {
    var cells: [CellType] = []
    
    func createCell() {
        cells.append(getRandomCellType())
    }
    
    private func getRandomCellType() -> CellType {
        let cellTypes = [CellType.dead, CellType.living]
        let randomIndexElement = Int.random(in: 0..<cellTypes.count)
        return cellTypes[randomIndexElement]
    }
}
