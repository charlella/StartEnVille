//
//  ContentView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var showStartScreen = true
    
    var body: some View {
//        ZStack {
//            if showStartScreen {
//                Image("startenville-logo")
//                    .resizable()
//                    .scaledToFit()
//                    .edgesIgnoringSafeArea(.all)
//                    .transition(.opacity)
//                    .animation(.easeInOut(duration: 2), value: 1)
//                    .onAppear {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                            withAnimation {
//                                self.showStartScreen = false
//                            }
//                        }
//                    }
//            } else {
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
                .accentColor(Color(red: 0/255, green: 113/255, blue: 164/255))
            }
        }
//    }
//}
#Preview {
    ContentView()
}
