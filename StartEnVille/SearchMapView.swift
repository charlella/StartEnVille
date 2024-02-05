//
//  SearchMapView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI
import MapKit

struct SearchMapView: View {
   
    var events: [Event]
    
    var categories: [EventCategory]
     
    var body: some View {
        ZStack {
            MapView(events: filteredEvents)
            VStack(alignment: .trailing) {
                CapsuleCategory(categories: categories)
            }
            .padding(.leading, 270)
        }
    }

    private var filteredEvents: [Event] {
        // Le filtre est fait sur SearchView
        return events
    }
 }


#Preview {
    SearchMapView(events: events, categories: categories)
}
