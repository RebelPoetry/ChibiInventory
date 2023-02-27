//
//  InventoryItemView.swift
//  InventoryItem
//
//  Created by Kazakh on 25.02.2023.
//

import SwiftUI
import TCA

// MARK: - InventoryItemView

struct InventoryItemView: View {
    
    // MARK: - Properties
    
    /// The store powering the `InventoryItem` feature
    public let store: StoreOf<InventoryItemFeature>
    
    // MARK: - View
    
    var body: some View {
        WithViewStore(store) { viewStore in
            VStack {
                HStack {
                    Text(viewStore.title)
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(.black)
                        .lineLimit(1)
                    Spacer()
                    BadgeView {
                        Text(viewStore.badgeValue)
                    }
                }
                HStack {
                    Text(viewStore.subtitle)
                        .font(.system(size: 17))
                        .foregroundColor(.gray)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                Image(viewStore.imageName)
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            .onTapGesture {
                viewStore.send(.itemTapped)
            }
            .padding(.horizontal, 22)
            .padding(.vertical, 16)
            .background(Color.white)
            .smoothCorners(radius: 16)
            .padding(.horizontal, 16)
        }
    }
}
