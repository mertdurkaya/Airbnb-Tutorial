//
//  MainTabView.swift
//  AirbnbTutorial
//
//  Created by Mert Durkaya on 19/09/2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }

            WishlistsView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Wishlists")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainTabView()
}
