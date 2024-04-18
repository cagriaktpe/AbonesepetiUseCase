//
//  CampaignsViewModel.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import Foundation
import CoreData

class CampaignsViewModel: ObservableObject {
    @Published var campaigns: [CampaignModel] = []
    
    init() {
        getCampaings()
    }
    
    func getCampaings() {
        let campaign1 = CampaignModel(
            title: "Taraftar TV Paketi + 16 Mbps Limitsiz İnternet",
            company: "Digiturk",
            price: 529.0,
            companyImage: "digiturkLogo",
            cardImage: "digiturk",
            description: "İngiltere Premier Ligi, Fransa Ligue 1, Almanya Ligi içeriklerini ayrıca Spor Toto 1. Lig maçlarını izleyebileceğiniz bu pakette ulusal, haber, belgesel, çocuk, dünyadan spor, eğlence ve yaşam kanalları, 1 adet film beinmoviesstar, 1 adet dizi beIN seriescomedy kanalı ile birlikte izleyebileceksiniz.",
            gifts: [
                GiftModel(description: "İlk 2 ay yıldız dolu paket hediye"),
                GiftModel(description: "Tüm film, dizi, spor ve süper lig içerikleri hediye")
            ],
            features: [
                FeatureModel(description: "Taraftarları olduğunuz 4 büyük takımdan birinin maçları (BJK-FB-GS-TS)"),
                FeatureModel(description: "beIN CONNECT'le dilediğiniz zaman dilediğiniz yerde izleme özgürlüğü"),
                FeatureModel(description: "Modem ücreti aylık 45 TL")
            ],
            category: "İNTERNET+TV",
            specialFeatures: [
                SpecialFeatureModel(title: "İndirimli Ay", description: "12 Ay"),
                SpecialFeatureModel(title: "Cayma Bedeli Karşılanma", description: "Hayır"),
                SpecialFeatureModel(title: "İnternet Limiti", description: "Limitsiz"),
            ]
        )
        
        let campaign2 = CampaignModel(
            title: "Aile Spor + 16 Mbps İnternet",
            company: "D-Smart",
            price: 409.0,
            companyImage: "dsmartLogo",
            cardImage: "d-smart",
            description: "Premium Spor Kanalları, Özel Çocuk Kanalları, Seçkin Belgesel Kanalları, Uluslararası Haber Kanalları, Özel Yemek ve Müzik Kanalları",
            gifts: [
                GiftModel(description: "İlk Ay Tüm Kanallar Hediye"),
                GiftModel(description: "D-Smart GO Hediye"),
                GiftModel(description: "Aktivasyon Ücretsiz"),
                GiftModel(description: "Kurulum Ücretsiz")
            ],
            features: [
                FeatureModel(description: "İlk 3 ay 249 TL ikinci Ay 489 TL"),
                FeatureModel(description: "Modem ücreti aylık 75 TL"),
            ],
            category: "İNTERNET+TV",
            specialFeatures: [
                SpecialFeatureModel(title: "İndirimli Ay", description: "12 Ay"),
                SpecialFeatureModel(title: "Cayma Bedeli Karşılanma", description: "Hayır"),
                SpecialFeatureModel(title: "İnternet Limiti", description: "Limitsiz"),
            ]
        )
        
        let campaign3 = CampaignModel(
            title: "3'lü Bilim ve Çocuk 1 Yıllık Abonelik Paketi",
            company: "444dergi",
            price: 299.90,
            companyImage: "444dergiLogo",
            cardImage: "444dergi",
            features: [
                FeatureModel(description: "Bilim ve Teknik ve Bilim Çocuk dergileri her ayın 1'inde yayımlanır ve aynı gün kargoyla abonelerimize gönderilir."),
                FeatureModel(description: "Kargodan yaşanan transfer süreci İL - İLÇE bölgelere göre 5 ila 10 günü bulabilmektedir."),
                FeatureModel(description: "Abonelik, ilgili dergiye abone olunan tarihten itibaren bir sonraki sayı ile başlar."),
                FeatureModel(description: "Kargonuzun durumu, size gönderilen SMS'de belirtilen kargo takip numarası ile ilgili kargo firmasının adresinden sorgulayabilirsiniz."),
            ],
            category: "DERGİ",
            specialFeatures: [
                SpecialFeatureModel(title: "İndirimli Ay", description: "12 Ay"),
                SpecialFeatureModel(title: "Cayma Bedeli Karşılanma", description: "Hayır"),
                SpecialFeatureModel(title: "İnternet Limiti", description: "Limitsiz"),
            ]
        )
        
        campaigns = [campaign1, campaign2, campaign3]
    }
}
