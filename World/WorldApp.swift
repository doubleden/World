//
//  WorldApp.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

@main
struct WorldApp: App {
    @Environment(\.colorScheme) private var colorShame
    
    var body: some Scene {
        WindowGroup {
            WorldView()
                .preferredColorScheme(.dark)
        }
    }
}
