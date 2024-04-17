//
//  CampaignCardView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

struct CampaignCardView: View {
    
    let campaign: CampaignModel
    
    var body: some View {
        VStack {
            Text(campaign.title)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.bottom, 5)
            
            Text(campaign.description ?? "")
                .font(.body)
                .foregroundColor(.secondary)
                .padding(.bottom, 5)
        }
    }
}

#Preview {
    CampaignCardView(campaign: CampaignModel.dummyData)
}
