//
//  BadgeView.swift
//  InventoryItem
//
//  Created by Kazakh on 25.02.2023.
//

import SwiftUI

// MARK: - BadgeView

/// Badge view, for example 'soon' badge
public struct BadgeView<Content: View>: View {
    
    // MARK: - Properties
    
    /// Content to show
    public let content: Content
    
    // MARK: - Initializer
    
    /// - Parameters:
    ///   - content: The content to which wiil aplly parameters below
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content()
    }
    
    // MARK: - View
    
    public var body: some View {
        content
            .font(.system(size: 15, weight: .medium))
            .lineLimit(1)
            .padding(.vertical, 3)
            .padding(.horizontal, 8)
            .minimumScaleFactor(0.38)
            .background(Color("badgeBackgroundColor"))
            .foregroundColor(Color("badgeForegroundColor"))
            .smoothCorners(radius: 26)
    }
}
