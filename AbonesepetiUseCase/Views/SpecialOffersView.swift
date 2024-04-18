//
//  SpecialOffersView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 18.04.2024.
//

import SwiftUI

struct SpecialOffersView: View {
    
    @EnvironmentObject var vm: CampaignsViewModel
    @State private var selectedCampaign: CampaignModel?
    
    var body: some View {
        VStack {
            Text("SANA ÖZEL TEKLİFLERİMİZ")
                .fontWeight(.semibold)
                .foregroundStyle(Color.accentColor)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.campaigns) { campaign in
                        OfferCardView(offer: campaign)
                            .onTapGesture {
                                selectedCampaign = campaign
                            }
                    }
                    .padding()
                }
            }
        }
        .sheet(item: $selectedCampaign) { campaign in
            NavigationStack {
                CampaignDetailView(campaign: campaign)
                    .navigationTitle("Kampanya Detayı")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    
    @StateObject var vm = CampaignsViewModel()
    
    return(
    NavigationStack {
        SpecialOffersView()
            .environmentObject(vm)
    }
    )
}
