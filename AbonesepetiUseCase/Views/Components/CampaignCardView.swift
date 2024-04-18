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
        VStack(alignment: .leading, spacing: 10) {
            Image(campaign.image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 5))

            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(campaign.title)
                        .lineLimit(1)
                        .font(.caption)
                        .fontWeight(.medium)

                    if let description = campaign.description {
                        Text(description)
                            .lineLimit(1)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    } else if let firstFeature = campaign.features?.first {
                        Text(firstFeature.emoji + " " + firstFeature.description)
                            .lineLimit(1)
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                }

                Spacer()

                Image(systemName: "chevron.right")
                    .font(.title3)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 5)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .shadow(radius: 5)
                    .padding(.top, 10)
            }
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

#Preview {
    ZStack {
        Color.gray
        CampaignCardView(campaign: CampaignModel.dummyData)
    }
}
