//
//  CampaignModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import Foundation

struct CampaignModel: Identifiable {
    var id: String = UUID().uuidString
    var title: String
    var company: String
    var price: Double
    var companyImage: String
    var cardImage: String
    var description: String?
    var gifts: [GiftModel]?
    var features: [FeatureModel]?
    var category: String
    var specialFeatures: [SpecialFeatureModel]?
}

extension CampaignModel {
    // dummy data for test purposes
    static var dummyData: CampaignModel = CampaignModel(
        title: "Taraftar TV Paketi + 16 Mbps Limitsiz İnternet",
        company: "Digiturk",
        price: 99.99,
        companyImage: "digiturkLogo",
        cardImage: "digiturk", description: "Kampanya 1 Açıklama",
        gifts: [GiftModel(description: "Hediye 1"),
                GiftModel(description: "Hediye 2")],
        features: [FeatureModel(description: "Özellik 1"),
                   FeatureModel(description: "Özellik 2")],
        category: "İNTERNET", specialFeatures: [SpecialFeatureModel(title: "Özel Özellik 1", description: "Özel Özellik Açıklama 1"),
                                                SpecialFeatureModel(title: "Özel Özellik 2", description: "Özel Özellik Açıklama 2")])

    static var dummyData2: CampaignModel = CampaignModel(
        title: "Eğlencenin Yıldızı ve Avrupa",
        company: "Digiturk",
        price: 99.99,
        companyImage: "digiturkLogo",
        cardImage: "digiturk", description: "Kampanya 1 Açıklama",
        gifts: [GiftModel(description: "Hediye 1"),
                GiftModel(description: "Hediye 2")],
        features: [FeatureModel(description: "Özellik 1"),
                   FeatureModel(description: "Özellik 2")],
        category: "İNTERNET", specialFeatures: [SpecialFeatureModel(title: "İndirimli Ay", description: "4 Ay"),
                                                SpecialFeatureModel(title: "Cayma Bedeli", description: "Hayır"),
                                                SpecialFeatureModel(title: "Tv Paketi", description: "Avrupanın Yıldızı")])
}
