//
//  MapView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import SwiftUI
import MapKit

struct MapView: View {
    var events: [Event]
    
    var body: some View {
        Map(coordinateRegion: .constant(region), showsUserLocation: false, userTrackingMode: .none, annotationItems: events) { event in
            MapPin(coordinate: event.location, tint: event.categories.first?.color ?? .blue)
        }
        .onAppear {
            //
        }
        .ignoresSafeArea()
    }
    
    private var region: MKCoordinateRegion {
        // Affichage de tous les évènements sur la carte
        var minLatitude = events.map { $0.location.latitude }.min() ?? 0
        var maxLatitude = events.map { $0.location.latitude }.max() ?? 0
        var minLongitude = events.map { $0.location.longitude }.min() ?? 0
        var maxLongitude = events.map { $0.location.longitude }.max() ?? 0
        
        // Ajout d'un padding autour
        let padding = 0.02
        minLatitude -= padding
        maxLatitude += padding
        minLongitude -= padding
        maxLongitude += padding
        
        let center = CLLocationCoordinate2D(latitude: (minLatitude + maxLatitude) / 2, longitude: (minLongitude + maxLongitude) / 2)
        let span = MKCoordinateSpan(latitudeDelta: maxLatitude - minLatitude, longitudeDelta: maxLongitude - minLongitude)
        
        return MKCoordinateRegion(center: center, span: span)
    }
}

#Preview {
        MapView(events: events)
    
}
