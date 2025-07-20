//
//  MainTabView.swift
//  instagramClone
//
//  Created by Enes Ömer Koçhan on 12.07.2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            
            FeedView()
                .tabItem{Image(systemName: "house")}
            SearchView()
                .tabItem{Image(systemName: "magnifyingglass")}
            Text("Upload")
                .tabItem{Image(systemName: "plus.square")}
            Text("Notifacitions")
                .tabItem{Image(systemName: "heart")}
            ProfileView()
                .tabItem{Image(systemName: "person")}
        }.accentColor(Color("TabBarItemColor"))
    }
}

#Preview {
    MainTabView()
}

