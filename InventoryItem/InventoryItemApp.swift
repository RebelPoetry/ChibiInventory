//
//  InventoryItemApp.swift
//  InventoryItem
//
//  Created by Kazakh on 25.02.2023.
//

import SwiftUI
import TCA

@main
struct InventoryItemApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack {
                    ChibiInventoryView(store: Store(
                        initialState: ChibiInventoryState(),
                        reducer: ChibiInventoryFeature()
                    ))
                }
            }
        }
    }
}
