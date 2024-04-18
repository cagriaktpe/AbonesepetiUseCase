//
//  CampaignDetailView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 18.04.2024.
//

import SwiftUI

struct CampaignDetailView: View {
    @Environment(\.dismiss) var dismiss
    let campaign: CampaignModel

    var body: some View {
        ZStack {
            Color("BackgroundColor")
            content
        }
    }

    var content: some View {
        ScrollView {
            VStack(alignment: .leading) {
                title
                image
                detailsTitle
                details
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Text("Hemen Başvur")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .padding()
                            .padding(.horizontal, 100)
                            .background(Color.accentColor)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }

                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.backward")
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
    }

    var title: some View {
        Text(campaign.title)
            .font(.callout)
            .foregroundStyle(.secondary)
            .fontWeight(.bold)
            .padding()
    }

    var image: some View {
        Image(campaign.cardImage)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white)
    }

    var detailsTitle: some View {
        Text("Promosyon Detayları")
            .font(.footnote)
            .foregroundStyle(.secondary)
            .fontWeight(.bold)
            .padding()
    }

    var details: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(campaign.description ?? "")

            if let gifts = campaign.gifts {
                ForEach(gifts) { gift in
                    Text(gift.emoji + " " + gift.description)
                }
            }

            if let features = campaign.features {
                ForEach(features) { feature in
                    Text(feature.emoji + " " + feature.description)
                }
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.white)
    }
}

#Preview {
    NavigationStack {
        ZStack {
            Color.gray
            CampaignDetailView(campaign: CampaignModel.dummyData)
        }
    }
}
