//
//  SearchView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    @State private var selectedMenu = "Carte"
    
    //var event: Event
    
    var body: some View {
        NavigationView {
                   ZStack(alignment: .top) {
                       VStack(spacing: 0) {
                           VStack(spacing: 0) {
                               Text("Start-en-ville")
                                   .font(.title.bold())
                                   .foregroundStyle(Color(red: 255/255, green: 204/255, blue: 0/255))
                                   .accessibilityAddTraits(.isHeader)
                               SearchBar(text: $searchText, placeholder: "Rechercher un évènement")
                                   .padding()
                           }
                           .background(Color(red: 0/255, green: 113/255, blue: 164/255))
                           
                           if selectedMenu == "Carte" {
                               SearchMapView(events: filteredEvents, categories: categories)
                           } else {
                               SearchListView()
                           }
                       }
                       

                       Picker("Menu", selection: $selectedMenu) {
                           Text("Carte").tag("Carte")
                           Text("Liste").tag("Liste")
                       }
                       .pickerStyle(SegmentedPickerStyle())
                       .frame(width: 300)
                       .padding(.top, 120)
                       .padding(.leading, 3)
                   }
                   .navigationBarHidden(true)
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
