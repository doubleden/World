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
    
    func createRandomCell() {
        cells.append(getRandomCellType())
    }
    
    func createCell() {
        guard isLastThreeElementsSame() else { return }
        guard let cellType = cells.last else { return }
        
        switch cellType {
        case .live: break
        case .death: break
        case .living: cells.append(CellType.live)
        case .dead: cells.append(CellType.death)
        }
    }
    
    private func getRandomCellType() -> CellType {
        let cellTypes = [CellType.dead, CellType.living]
        let randomIndexElement = Int.random(in: 0..<cellTypes.count)
        return cellTypes[randomIndexElement]
    }
    
    private func isLastThreeElementsSame() -> Bool {
        guard cells.count >= 3 else { return false }
        let lastThreeElements = cells.suffix(3)
        
        return lastThreeElements.allSatisfy { $0 == lastThreeElements.first }
    }
}
