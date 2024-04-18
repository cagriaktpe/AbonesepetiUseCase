//
//  LandingView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

struct LandingView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image("logo")
                    Text("Abonesepeti")
                }

            Text("Bu sadece bir örnek sayfadır.")
                .tabItem {
                    Image(systemName: "arrow.counterclockwise")
                    Text("Abonelikler")
                }

            Text("Bu sadece bir örnek sayfadır.")
                .tabItem {
                    Image(systemName: "creditcard")
                    Text("İşlemler")
                }

            CampaignsView()
                .background(Color.red)
                .tabItem {
                    Image(systemName: "heart")
                    Text("Kampanyalar")
                }

            Text("Bu sadece bir örnek sayfadır.")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Yönet")
                }
        }
    }
}

#Preview {
    @StateObject var vm: CampaignsViewModel = CampaignsViewModel()
    return(
        LandingView()
            .environmentObject(vm)
    )
}
