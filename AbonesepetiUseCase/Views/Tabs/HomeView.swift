//
//  HomeView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 18.04.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("BackgroundColor")
                content
            }
        }
    }
    
    var content: some View {
        ScrollView {
            SpecialOffersView()
                .padding(.top, 10)
        }
        .toolbarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    print("Button Tapped")
                }) {
                    Image(systemName: "bell")
                }
            }
            
            ToolbarItem(placement: .principal) {
                Image("logoNav")
                    .resizable()
                    .scaledToFit()
                    
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    print("Button Tapped")
                }) {
                    Image(systemName: "person.crop.circle")
                }
            }
        }
    }
}

#Preview {
    @StateObject var vm: CampaignsViewModel = CampaignsViewModel()
    return(
        HomeView()
            .environmentObject(vm)
    )
    
}
