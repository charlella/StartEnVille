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
            VStack {
                List(events) { event in
                    NavigationLink {
                        EventDetail(data: event)
                    } label: {
                        FavoriteRow(event: event)
                    }
                }
            }
        }
    }
}
#Preview {
    FavoritesView()
}
