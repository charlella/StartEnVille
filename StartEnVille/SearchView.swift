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
        VStack {
            SearchBar(text: $searchText, placeholder: "Rechercher un évènement")
                .padding()
                .onChange(of: searchText) { _ in
                    updateSearchResults()
                }
                .background(.teal)
            
            //if !searchText.isEmpty {
                //SearchResults()
//            } else {
//                Text("Enter a search term")
//                    .foregroundColor(.white)
//                    .padding()
                //Spacer()
            //}

            SearchMapView(events: events, categories: categories )
                //.ignoresSafeArea()
        }
        
    }
    
    private func updateSearchResults() {
//        dataManager.fetchMovies { _ in
//            let filteredMovies = dataManager.movies.filter { movie in
//                let lowercasedName = movie.name.lowercased()
//                let lowercasedSearchText = searchText.lowercased()
//                
//                return containsSearchText(lowercasedSearchText, in: lowercasedName)
//            }
//            
//            dataManager.searchResults = filteredMovies
//        }
    }
    
    //private func containsSearchText(_ searchText: String, in movieName: String) -> Bool {
//        return movieName.lowercased().contains(searchText.lowercased())
   // }
}

#Preview {
    SearchView()
}
