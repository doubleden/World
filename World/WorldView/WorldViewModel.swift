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
    
    private var lastCreatedLiveIndex = 0
    
    func createRandomCell() {
        cells.append(getRandomCellType())
    }
    
    func createCell() {
        guard isLastThreeElementsSame() else { return }
        guard let lifeOrDeath = getNewCell() else { return }
        cells.append(lifeOrDeath)
    }
    
    func isLifeCanLive() -> Bool {
        guard isLastThreeElementsSame() else { return true }
        guard lastCreatedLiveIndex <= cells.count - 4 else { return true }
        return getNewCell() == .death
    }
    
    func killLife() {
        cells[lastCreatedLiveIndex] = .death
    }
    
    private func getNewCell() -> CellType? {
        guard let cellType = cells.last else { return nil }
        
        switch cellType {
        case .life: break
        case .death: break
        case .live: 
            lastCreatedLiveIndex = cells.count - 1
            return CellType.life
        case .dead:
            return CellType.death
        }
        
        return cellType
    }
    
    private func getRandomCellType() -> CellType {
        let cellTypes = [CellType.dead, CellType.live]
        let randomIndexElement = Int.random(in: 0..<cellTypes.count)
        return cellTypes[randomIndexElement]
    }
    
    private func isLastThreeElementsSame() -> Bool {
        guard cells.count >= 3 else { return false }
        let lastThreeElements = cells.suffix(3)
        
        return lastThreeElements.allSatisfy { $0 == lastThreeElements.first }
    }
}
