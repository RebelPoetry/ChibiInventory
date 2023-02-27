//
//  ChibiInventoryView.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

import SwiftUI
import TCA

// MARK: - ChibiInventoryView

public struct ChibiInventoryView: View {
    
    // MARK: - Properties
    
    /// The store powering the `ChibiInventory` feature
    public let store: StoreOf<ChibiInventoryFeature>
    
    // MARK: - View
    
    public var body: some View {
        WithViewStore(store) { viewStore in
            ZStack {
                Color("background").ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 16) {
                        ForEachStore(
                            store.scope(state: \.items, action: ChibiInventoryAction.chibiInventoryItem(id:action:)),
                            content: InventoryItemView.init
                        )
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Мой инвентарь")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.backward")
                        .foregroundColor(Color("backbuttonColor"))
                }
            }
        }
    }
}

// MARK: - Preview

struct ChibiAcademyView_Previews: PreviewProvider {
    static var previews: some View {
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
