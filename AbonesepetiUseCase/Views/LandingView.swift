//
//  LandingView.swift
//  AbonesepetiUseCase
//
//  Created by Samet Çağrı Aktepe on 17.04.2024.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        NavigationStack {
            TabView {
                Text("Bu sadece bir örnek sayfadır.")
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
                
                Text("Bu sadece bir örnek sayfadır.")
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
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        print("Button Tapped")
                    }) {
                        Image(systemName: "bell")
                    }
                }
                
                ToolbarItem(placement: .principal) {
                    Image("navlogo")
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
}

#Preview {
    LandingView()
}
