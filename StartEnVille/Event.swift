//
//  Event.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import Foundation
import MapKit
import SwiftUI

struct Event: Identifiable {
    var id = UUID()
    var title: String
    var photo: String
    var location: CLLocationCoordinate2D
    var address: Address
    var dateTime: Date
        var formattedDate: String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE d MMMM HH:mm" //retiré yyyy à
            dateFormatter.locale = Locale(identifier: "fr_FR")
            return dateFormatter.string(from: dateTime)
        }
    var description: String
    var isFree: Bool
    var price: Double?
    var author: User
    var participants: [User]
    var categories: [EventCategory]
    var discussion: [Message]
}

struct Address {
    var place: String
    var number: String
    var street: String
    var city: String
    var postalCode: String
}

struct EventCategory: Identifiable {
    var id = UUID()
    var name: String
    var color: Color
}

struct Message: Identifiable {
    var id = UUID()
    var sender: User
    var content: String
    var timestamp: Date
}

var events = [
    Event(
        title: "Pique-nique",
        photo: "pique-nique",
        location: CLLocationCoordinate2D(latitude: 43.2717, longitude: 5.3686),
        address: Address(place: "Parc Borély", number: "", street: "Av. du Parc Borély", city: "Marseille", postalCode: "13008"),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 11
            components.hour = 12
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Pique-nique pour ceux qui veulent vivre une expérience partagée, en bord de mer à Marseille, ce parc est l'un des plus appréciés de la ville",
        isFree: true,
        price: nil,
        author: User(
            name: "Lola",
            photo: "lola_image.png",
            favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
            age: 28,
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mireille",
                photo: "mireille_image.png",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
                age: 35,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Mo",
                photo: "mo_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Nina",
                photo: "nina_image.png",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                age: 29,
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
        discussion: []
    ),
    Event(
        title: "Rando dans les calanques",
        photo: "randocalanques",
        location: CLLocationCoordinate2D(latitude: 43.2109, longitude: 5.4459), // Coordonnées fictives pour la Calanque de Morgiou
        address: Address(place: "Morgiou", number: "", street: "", city: "", postalCode: ""),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 17
            components.hour = 10
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Randonnée dans les calanques, organisée par Nina. Profitez de la nature et de l'exercice!",
        isFree: true,
        price: nil,
        author: User(
            name: "Nina",
            photo: "nina_image.png",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 29,
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mo",
                photo: "mo_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Lola",
                photo: "lola_image.png",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
                age: 28,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
        discussion: []
    ),
    Event(
        title: "Palais Longchamp",
        photo: "palaislongchamp",
        location: CLLocationCoordinate2D(latitude: 43.3049, longitude: 5.3942),
        address: Address(place: "Palais Longchamp", number: "", street: "", city: "", postalCode: ""),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 17
            components.hour = 10
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Randonnée dans les calanques, organisée par Nina. Profitez de la nature et de l'exercice!",
        isFree: true,
        price: nil,
        author: User(
            name: "Nina",
            photo: "nina_image.png",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 29,
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mo",
                photo: "mo_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Lola",
                photo: "lola_image.png",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
                age: 28,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "culture", color: Color.orange), EventCategory(name: "langue", color: Color.pink)],
        discussion: []
    ),
    Event(
        title: "BeachVolley",
        photo: "beachvolley",
        location: CLLocationCoordinate2D(latitude: 43.2628, longitude: 5.3714), 
        address: Address(place: "Plage du Prado", number: "", street: "Avenue du Prado", city: "Marseille", postalCode: "13008"),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 11
            components.hour = 14
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Tournoi de BeachVolley à la plage du Prado, organisé par Mo. Venez vous amuser et profiter du soleil!",
        isFree: true,
        price: nil,
        author: User(
            name: "Mo",
            photo: "mo_image.png",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 22,
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mireille",
                photo: "mireille_image.png",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
                age: 35,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image.png",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "sport", color: Color.purple), EventCategory(name: "nature", color: Color.green)],
        discussion: []
    ),

    
]

var categories = [
    EventCategory(name: "food", color: Color.blue),
    EventCategory(name: "sport", color: Color.purple),
    EventCategory(name: "nature", color: Color.green),
    EventCategory(name: "culture", color: Color.orange),
    EventCategory(name: "language", color: Color.pink),
    EventCategory(name: "start", color: Color.yellow)
]
