//
//  ContentView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Group {
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Recherche")
                    }
                
                CreateView()
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("Créer")
                    }
                
                FavoritesView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("Favoris")
                    }
                
                ChatView()
                    .tabItem {
                        Image(systemName: "bubble.fill")
                        Text("Chat")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profil")
                    }
            }
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color.white.opacity(0.1), for: .tabBar)
        }
        .accentColor(.teal)
    }
}

#Preview {
    ContentView()
}
