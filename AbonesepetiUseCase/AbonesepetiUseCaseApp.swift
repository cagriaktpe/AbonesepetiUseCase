//
//  AbonesepetiUseCaseApp.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

@main
struct AbonesepetiUseCaseApp: App {
    
    @StateObject var campaignsViewModel = CampaignsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LandingView()
                .environmentObject(campaignsViewModel)
        }
    }
}
