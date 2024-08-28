//
//  MainBackground.swift
//  World
//
//  Created by Denis Denisov on 28/8/24.
//

import SwiftUI

struct MainBackground: View {
    var body: some View {
        Rectangle()
            .ignoresSafeArea()
            .foregroundStyle(
                Gradient(colors: [.mainBackground, .black])
            )
    }
}

#Preview {
    MainBackground()
}
