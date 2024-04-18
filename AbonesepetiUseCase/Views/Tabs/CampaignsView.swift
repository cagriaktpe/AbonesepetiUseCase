//
//  CampaignsView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

struct CampaignsView: View {
    
    @EnvironmentObject var vm: CampaignsViewModel
    @State private var selectedCampaign: CampaignModel?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(vm.campaigns) { campaign in
                        CampaignCardView(campaign: campaign)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                            .onTapGesture {
                                selectedCampaign = campaign
                            }
                    }
                }
                
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Üyelere Özel Kampanyalarımız")
                        .font(.callout)
                        .foregroundStyle(Color.accentColor)
                        .fontWeight(.semibold)
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
}

#Preview {
    
    @StateObject var vm = CampaignsViewModel()
    
    return (
        TabView {
            NavigationStack {
                CampaignsView()
                    .environmentObject(vm)
            }
        }
    )
    
    
}
