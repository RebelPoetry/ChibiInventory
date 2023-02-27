//
//  ChibiInventoryFeature.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

import TCA

// MARK: - ChibiInventoryFeature

public struct ChibiInventoryFeature: ReducerProtocol {
    
    // MARK: - Feature
    
    public var body: some ReducerProtocol<ChibiInventoryState, ChibiInventoryAction> {
        Reduce { state, action in
            switch action {
            case .chibiInventoryItem(id: let id, action: .itemTapped):
                print("inventory with id - \(id) tapped")
            }
            return .none
        }.forEach(\.items, action: /ChibiInventoryAction.chibiInventoryItem(id:action:)) {
            InventoryItemFeature()
        }
    }
}
