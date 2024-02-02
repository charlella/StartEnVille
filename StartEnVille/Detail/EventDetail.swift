//
//  EventDetail.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI
import MapKit

struct EventDetail: View {
    var data: Event
    
    var body: some View {
        Text("EventDetail")
        //Text(event.title)
    }
}

//#Preview {
//    EventDetail(data: Event(title: "Rando", photo: "randocalanques", location: CLLocationCoordinate2D(latitude: 43.2717, longitude: 5.3686), address: Address(place: "Av. du Parc Borély", number: "", street: "", city: "Marseille", postalCode: "13008"),
//                            dateTime: {
//                                var components = DateComponents()
//                                components.year = 2024
//                                components.month = 2
//                                components.day = 11
//                                components.hour = 12
//                                components.minute = 0
//                                components.timeZone = TimeZone(identifier: "Europe/Paris")
//                                return Calendar.current.date(from: components)!
//                            }(), description: "Pique-nique pour ceux qui veulent vivre une expérience partagée, en bord de mer à Marseille, ce parc est l'un des plus appréciés de la ville", isFree: true, author: User(
//                                name: "Lola",
//                                photo: "lola_image.png",
//                                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
//                                age: 28,
//                                pastEvents: [],
//                                futureEvents: []
//                            ), participants: [
//                                User(
//                                    name: "Mireille",
//                                    photo: "mireille_image.png",
//                                    favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
//                                    age: 35,
//                                    pastEvents: [],
//                                    futureEvents: []
//                                ),
//                                User(
//                                    name: "Mo",
//                                    photo: "mo_image.png",
//                                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
//                                    age: 22,
//                                    pastEvents: [],
//                                    futureEvents: []
//                                ),
//                                User(
//                                    name: "Samira",
//                                    photo: "samira_image.png",
//                                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
//                                    age: 23,
//                                    pastEvents: [],
//                                    futureEvents: []
//                                ),
//                                User(
//                                    name: "Stéphanie",
//                                    photo: "stephanie_image.png",
//                                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
//                                    age: 33,
//                                    pastEvents: [],
//                                    futureEvents: []
//                                ),
//                                User(
//                                    name: "Nina",
//                                    photo: "nina_image.png",
//                                    favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
//                                    age: 29,
//                                    pastEvents: [],
//                                    futureEvents: []
//                                )
//                            ], categories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)], discussion: [])
//                )
//}
