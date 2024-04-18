//
//  OfferCardView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 18.04.2024.
//

import SwiftUI

struct OfferCardView: View {
    
    let offer: CampaignModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(offer.companyImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Text(offer.company.uppercased())
                    .fontWeight(.semibold)
                    .lineLimit(1)
            }
            
            Text(offer.title)
                .foregroundStyle(Color.accentColor)
                .lineLimit(1)
            
            HStack {
                VStack(alignment: .leading) {
                    if let specialFeatures = offer.specialFeatures {
                        ForEach(specialFeatures) { feature in
                            VStack(alignment: .leading) {
                                Text(feature.title)
                                    .lineLimit(1)
                                    .font(.caption)
                                    .foregroundColor(Color.accentColor)
                                
                                Text(feature.description)
                                    .lineLimit(1)
                                    .font(.caption)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.accentColor)
                            }
                            
                        }
                        .padding(.top, 5)
                    }
                }
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .shadow(color: Color(.label).opacity(0.2), radius: 5, x: 0, y: 2)
                .padding(.top, 5)
                
                Spacer()
                
                Text("\(offer.price.formatted()) ₺")
                    .foregroundStyle(Color.accentColor)
                    .font(.title3)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }
            .frame(width: 200)
        }
        .padding()
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color(.label).opacity(0.2), radius: 5, x: 0, y: 2)
        .frame(width: 240)
        .overlay {
            VStack {
                Text(offer.category)
                    .font(.caption)
                    .foregroundStyle(Color.accentColor)
                    .fontWeight(.bold)
                    .padding(5)
                    .padding(.horizontal, 5)
                    .background(Color("LightBlueColor"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(y: -10)
                
                Spacer()
                
                
                
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 25, height: 25)
                    .padding()
                    .background {
                        Triangle()
                            .fill(Color.green)
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .offset(x: 10, y: 10)
                            }
                            .clipShape(RoundedCorner(size: 10, corner: .bottomRight))
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
            
        }
    }
}

#Preview {
    OfferCardView(offer: CampaignModel.dummyData2)
}
