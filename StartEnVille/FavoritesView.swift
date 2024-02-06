//
//  FavoritesView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI
import MapKit

struct FavoritesView: View {
    //events
    //categories
    
    var body: some View {
        NavigationStack {
            //Début du HEADER
            ZStack(alignment: .top) {
                Color(red: 0/255, green: 113/255, blue: 164/255)
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Text("Favoris")
                            .font(.title.bold())
                            .foregroundStyle(Color(red: 255/255, green: 204/255, blue: 0/255))
                            .accessibilityAddTraits(.isHeader)
                    }
                    .padding()
                    // fin du HEADER
                    VStack {
                        List(events) { event in
                            NavigationLink {
                                EventDetail(data: event)
                            } label: {
                                FavoriteRow(event: event)
                            }
                        }
                    }
//                    .navigationTitle("Favoris")
                }
            }
        }
    }
}
#Preview {
    FavoritesView()
}
