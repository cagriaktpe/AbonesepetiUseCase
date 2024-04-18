//
//  SpecialFeatureModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 18.04.2024.
//

import Foundation

// SpeatureFeatureModel is a struct that holds the properties of a feature. It is for CampaignModel.
struct SpecialFeatureModel: Identifiable {
    var id: String
    var title: String
    var description: String
    
    init(title: String, description: String) {
        self.id = UUID().uuidString
        self.title = title
        self.description = description
    }
}
