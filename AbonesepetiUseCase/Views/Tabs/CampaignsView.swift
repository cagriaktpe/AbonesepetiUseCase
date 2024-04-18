//
//  CampaignsView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

struct CampaignsView: View {
    
    @StateObject var vm = CampaignsViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(vm.campaigns) { campaign in
                        CampaignCardView(campaign: campaign)
                            .padding(.horizontal)
                            .padding(.vertical, 5)
                    }
                }
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Üyelere Özel Kampanyalarımız")
                        .font(.callout)
                        .foregroundStyle(Color.accentColor)
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        CampaignsView()
    }
}
