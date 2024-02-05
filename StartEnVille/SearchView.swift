//
//  SearchView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    //var event: Event
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                SearchBar(text: $searchText, placeholder: "Rechercher un évènement")
                    .padding()
                    .background(Color.teal)
                
                SearchMapView(events: filteredEvents, categories: categories)
            }
            //.navigationTitle("Start-en-ville")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Start-en-ville")
                        .font(.title.bold())
                        .foregroundStyle(.yellow)
                        .accessibilityAddTraits(.isHeader)
                }
            }
            .toolbarBackground(Color.teal, for: .navigationBar)
            
        }
    }
    
    private var filteredEvents: [Event] {
        guard !searchText.isEmpty else {
            return events
        }
        
        return events.filter { event in
            event.title.localizedCaseInsensitiveContains(searchText)
        }
    }
}

#Preview {
    SearchView()
}
