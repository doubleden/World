//
//  CellType.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import Foundation

enum CellType {
    case life
    case death
    case live
    case dead
    
    static func getCells() -> [CellType] {
        [.death, .dead, .live, .live,.live, .life]
    }
}
