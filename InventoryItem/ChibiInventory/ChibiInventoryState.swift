//
//  ChibiInventoryState.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

import TCA

// MARK: - ChibiInventoryState

public struct ChibiInventoryState: Equatable {
    
    // MARK: - Children
    
    /// Array of `InventoryItemState` instance
    ///
    /// It's an instances of `InventoryItem` module.
    /// We use it here to navigate to `InventoryItem` screen inside current module.
    public var items: IdentifiedArrayOf<InventoryItemState>
    
    // MARK: - Initializer
    
    public init() {
        self.items = IdentifiedArrayOf(uniqueElements:
            InventoryItem.allCases.map { category in
                InventoryItemState(
                    id: category.id,
                    title: category.title,
                    subtitle: category.subtitle,
                    imageName: category.imageName,
                    badgeValue: category.badgeValue
                )
            }
        )
    }
}
