//
//  InventoryItem.swift
//  InventoryItem
//
//  Created by Kazakh on 27.02.2023.
//

public enum InventoryItem: String, CaseIterable {
    
    case artefactsAndGems
    case mineralsAndCrystalls
    case oresAndMetals
    
    public var id: String {
        self.rawValue
    }
    
    public var title: String {
        switch self {
        case .artefactsAndGems:
            return "Артефакты и гемы"
        case .mineralsAndCrystalls:
            return "Минералы и кристаллы"
        case .oresAndMetals:
            return "Руды и металлы"
        }
    }
    
    public var subtitle: String {
        switch self {
        case .artefactsAndGems:
            return "Позволяют значительно увеличить характеристики чибика"
        case .mineralsAndCrystalls:
            return "Используются в производстве артефактов"
        case .oresAndMetals:
            return "Используются в производстве артефактов"
        }
    }
    
    public var imageName: String {
        switch self {
        case .artefactsAndGems:
            return "image1"
        case .mineralsAndCrystalls:
            return "image3"
        case .oresAndMetals:
            return "image2"
        }
    }
    
    public var badgeValue: String {
        switch self {
        case .artefactsAndGems:
            return "10"
        case .mineralsAndCrystalls:
            return "10"
        case .oresAndMetals:
            return "10"
        }
    }
}
