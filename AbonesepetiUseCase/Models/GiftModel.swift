//
//  GiftModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import Foundation

// GiftModel is a struct that holds the properties of a gift. It is for CampaignModel.
struct GiftModel: Identifiable {
    var id: String
    var emoji: String
    var description: String
    
    init(description: String) {
        self.id = UUID().uuidString
        self.emoji = "🎁"
        self.description = description
    }
}
