//
//  InventoryItemFeature.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

import TCA

// MARK: - InventoryItemFeature

public struct InventoryItemFeature: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<InventoryItemState, InventoryItemAction> {
        Reduce { state, action in
            switch action {
            case .itemTapped:
                print("chibi academy item tapped")
            }
            return .none
        }
    }
}
