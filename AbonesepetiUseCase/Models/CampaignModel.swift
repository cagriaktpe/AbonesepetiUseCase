//
//  CampaignModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import Foundation

// price, company and such properties can be added to the model but in my test case I will only use these properties.
struct CampaignModel: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var image: String
    var description: String?
    var gifts: [GiftModel]?
    var features: [FeatureModel]?
}

extension CampaignModel {
    // dummy data for test purposes
    static var dummyData: CampaignModel = CampaignModel(title: "Kampanya 1", image: "https://via.placeholder.com/150", description: "Kampanya 1 Açıklama", gifts: [GiftModel(description: "Hediye 1"), GiftModel(description: "Hediye 2")], features: [FeatureModel(description: "Özellik 1"), FeatureModel(description: "Özellik 2")])
}
