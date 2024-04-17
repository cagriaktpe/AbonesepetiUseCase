//
//  FeatureModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import Foundation

// FeatureModel is a struct that holds the properties of a feature. It is for CampaignModel.
struct FeatureModel: Identifiable {
    var id: String
    var emoji: String
    var description: String
    
    init(description: String) {
        self.id = UUID().uuidString
        self.emoji = "➡️"
        self.description = description
    }
}
