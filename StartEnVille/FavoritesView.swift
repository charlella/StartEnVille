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
    @State private var showFavoritesOnly = true
    var events: [Event]
    
    var body: some View {
        NavigationStack {
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
                    
                    if favoriteEvents.isEmpty {
                        Text("Pas encore d'évènements en favoris")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                    } else {
                        VStack {
                            List(favoriteEvents) { event in
                                NavigationLink(destination: EventDetail(event: event)) {
                                    FavoriteRow(event: event)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private var favoriteEvents: [Event] {
        return events.filter { $0.isFavorite }
    }
}
#Preview {
    FavoritesView(events: events)
}
