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
        let cellTypes = [CellType.dead, CellType.live]
        let randomIndex = Int.random(in: 0..<cellTypes.count)
        let randomElement = cellTypes[randomIndex]
        cells.append(randomElement)
    }
    
    func isLastThreeElementsSame() -> Bool {
        guard cells.count >= 3 else { return false }
        let lastThreeElements = cells.suffix(3)
        
        return lastThreeElements.allSatisfy { $0 == lastThreeElements.first }
    }
    
    func createLifeOrDeath() {
        guard let cellType = cells.last else { return }
        
        switch cellType {
        case .life: break
        case .death: break
        case .live:
            cells.append(CellType.life)
            lastCreatedLiveIndex = cells.count - 1
        case .dead:
            cells.append(CellType.death)
        }
    }
    
    func isLifeCanLive() -> Bool {
        guard cells.last == .death else { return true }
        let lastIndex = cells.count - 1
        return cells[lastIndex - 4] != .life
    }
    
    func killLife() {
        cells[lastCreatedLiveIndex] = .death
    }
}
