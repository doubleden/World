//
//  CellType.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import Foundation

enum CellType {
    case live
    case death
    case living
    case dead
    
    static func getCells() -> [CellType] {
        [.death, .dead, .living, .living,.living, .live]
    }
}
