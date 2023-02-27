//
//  InventoryItemState.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

// MARK: - ChibiAcademyItemState

public struct InventoryItemState: Equatable, Identifiable {
    
    // MARK: - Properties
    
    /// Inventory item id
    public let id: String
    
    /// Chibi inventory item title
    public let title: String
    
    /// Chibi inventory item subtitle
    public let subtitle: String
    
    /// Chibi inventory item image
    public var imageName: String
    
    /// Chibi inventory item badge value
    public var badgeValue: String
    
    // MARK: - Initializer
    
    public init(
        id: String,
        title: String,
        subtitle: String,
        imageName: String,
        badgeValue: String
    ) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.imageName = imageName
        self.badgeValue = badgeValue
    }
}
