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
    var isFavorite: Bool
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
            photo: "lola_image",
            favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
            age: 28,
            street: "La Joliette",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mireille",
                photo: "mireille_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
                age: 35,
                street: "Vieux-Port",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                street: "Cours Julien",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Nina",
                photo: "nina_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                age: 29,
                street: "Roucas Blanc",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
        discussion: [],
        isFavorite: true
    ),
    Event(
        title: "Rando Calanques",
        photo: "randocalanques",
        location: CLLocationCoordinate2D(latitude: 43.2109, longitude: 5.4459),
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
            photo: "nina_image",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 29,
            street: "Roucas Blanc",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Lola",
                photo: "lola_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
                age: 28,
                street: "La Joliette",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
        discussion: [],
        isFavorite: true
    ),
    Event(
        title: "Palais Longchamp",
        photo: "palaislongchamp",
        location: CLLocationCoordinate2D(latitude: 43.3049, longitude: 5.3942),
        address: Address(place: "Longchamp", number: "", street: "", city: "", postalCode: ""),
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
            photo: "nina_image",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 29,
            street: "Roucas Blanc",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Lola",
                photo: "lola_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
                age: 28,
                street: "La Joliette",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "culture", color: Color.orange), EventCategory(name: "langue", color: Color.pink)],
        discussion: [],
        isFavorite: false
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
            photo: "mo_image",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 22,
            street: "Le Panier",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Lola",
                photo: "lola_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
                age: 35,
                street: "La Joliette",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                street: "Cours Julien",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "sport", color: Color.purple), EventCategory(name: "nature", color: Color.green)],
        discussion: [],
        isFavorite: false
    ),
    Event(
            title: "Concert",
            photo: "batucada",
            location: CLLocationCoordinate2D(latitude: 43.3050, longitude: 5.3665),
            address: Address(place: "La Joliette", number: "", street: "Pl. de la Joliette", city: "Marseille", postalCode: "13002"),
            dateTime: {
                var components = DateComponents()
                components.year = 2024
                components.month = 2
                components.day = 16
                components.hour = 12
                components.minute = 0
                components.timeZone = TimeZone(identifier: "Europe/Paris")
                return Calendar.current.date(from: components)!
            }(),
            description: "Concert Percusion Afro-Brésilienne. Le group Mulêketú vous transporte avec énergie et sensualité dans le ballet chaloupé de ses percussions mobiles : une performance chorégraphiée où rythme et danse ne font qu'un os oreilles vont en prendre plein les yeux!",
            isFree: true,
            price: nil,
            author: User(
                name: "Lola",
                photo: "lola_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
                age: 28,
                street: "La Joliette",
                pastEvents: [],
                futureEvents: []
            ),
            participants: [
                User(
                    name: "Mireille",
                    photo: "mireille_image",
                    favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
                    age: 35,
                    street: "Vieux-Port",
                    pastEvents: [],
                    futureEvents: []
                ),
                User(
                    name: "Mo",
                    photo: "mo_image",
                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                    age: 22,
                    street: "Le Panier",
                    pastEvents: [],
                    futureEvents: []
                ),
                User(
                    name: "Samira",
                    photo: "samira_image",
                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                    age: 23,
                    street: "Cours Julien",
                    pastEvents: [],
                    futureEvents: []
                ),
                User(
                    name: "Stéphanie",
                    photo: "stephanie_image",
                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                    age: 33,
                    street: "L'Estaque",
                    pastEvents: [],
                    futureEvents: []
                ),
                User(
                    name: "Nina",
                    photo: "nina_image",
                    favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                    age: 29,
                    street: "Roucas Blanc",
                    pastEvents: [],
                    futureEvents: []
                )
            ],
            categories: [EventCategory(name: "culture", color: Color.orange),EventCategory(name: "langue", color: Color.pink)],
            discussion: [],
            isFavorite: false
        ),
    Event(
        title: "Café entre amis",
        photo: "cafe",
        location: CLLocationCoordinate2D(latitude: 43.2907676, longitude: 5.3808014),
        address: Address(place: "Le Café de la Banque", number: "24", street: "Bd Paul Peytral", city: "Marseille", postalCode: "13006"),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 17
            components.hour = 15
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Décompresser, échanger et faire de nouvelles connaissances autour d'un petit café!",
        isFree: true,
        price: nil,
        author:  User(
            name: "Mireille",
            photo: "mireille_image",
            favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
            age: 35,
            street: "Vieux-Port",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                street: "Cours Julien",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Nina",
                photo: "nina_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                age: 29,
                street: "Roucas Blanc",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "langue", color: Color.pink)],
        discussion: [],
        isFavorite: false
    ),
    Event(
        title: "Match OM",
        photo: "match",
        location: CLLocationCoordinate2D(latitude: 43.269827, longitude: 5.3958873),
        address: Address(place: "Stade Vélodrome", number: "3", street: "Boulevard Michelet", city: "Marseille", postalCode: "13008"),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 23
            components.hour = 19
            components.minute = 30
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Rdv devant la boutique officielle OM ",
        isFree: false,
        price: 50,
        author:  User(
            name: "Mireille",
            photo: "mireille_image",
            favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "nature", color: Color.green)],
            age: 35,
            street: "Vieux-Port",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Samira",
                photo: "samira_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 23,
                street: "Cours Julien",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            ),
            User(
                name: "Nina",
                photo: "nina_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                age: 29,
                street: "Roucas Blanc",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "sport", color: Color.purple),EventCategory(name: "culture", color: Color.orange)],
        discussion: [],
        isFavorite: false
    ),
    Event(
            title: "Apéro",
            photo: "apero",
            location: CLLocationCoordinate2D(latitude: 43.269827, longitude: 5.3958873),
            address: Address(place: "Le Bar de la Plaine", number: "57", street: "Pl Jean Jaurès", city: "Marseille", postalCode: "13005"),
            dateTime: {
                var components = DateComponents()
                components.year = 2024
                components.month = 2
                components.day = 23
                components.hour = 18
                components.minute = 0
                components.timeZone = TimeZone(identifier: "Europe/Paris")
                return Calendar.current.date(from: components)!
            }(),
            description: "Apéro",
            isFree: true,
            price: nil,
            author:  User(
                name: "Stéphanie",
                photo: "stephanie_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "food", color: Color.blue)],
                age: 33,
                street: "L'Estaque",
                pastEvents: [],
                futureEvents: []
            ),
            participants: [
               
                User(
                    name: "Mo",
                    photo: "mo_image",
                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                    age: 22,
                    street: "Le Panier",
                    pastEvents: [],
                    futureEvents: []
                ),
                User(
                    name: "Samira",
                    photo: "samira_image",
                    favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                    age: 23,
                    street: "Cours Julien",
                    pastEvents: [],
                    futureEvents: []
                ),
               
                User(
                    name: "Nina",
                    photo: "nina_image",
                    favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                    age: 29,
                    street: "Roucas Blanc",
                    pastEvents: [],
                    futureEvents: []
                )
            ],
            categories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "langue", color: Color.pink)],
            discussion: [],
            isFavorite: false
        ),
    Event(
        title: "Visite Abbaye",
        photo: "abbaye",
        location: CLLocationCoordinate2D(latitude: 43.29002, longitude: 5.36532),
        address: Address(place: "Abbaye Saint-Victor", number: "", street: "Pl Saint-Victor", city: "Marseille", postalCode: "13007"),
        dateTime: {
            var components = DateComponents()
            components.year = 2024
            components.month = 2
            components.day = 24
            components.hour = 11
            components.minute = 0
            components.timeZone = TimeZone(identifier: "Europe/Paris")
            return Calendar.current.date(from: components)!
        }(),
        description: "Visite Abbaye Saint-Victor",
        isFree: true,
        price: nil,
        author: User(
            name: "Samira",
            photo: "samira_image",
            favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
            age: 23,
            street: "Cours Julien",
            pastEvents: [],
            futureEvents: []
        ),
        participants: [
            User(
                name: "Mo",
                photo: "mo_image",
                favoriteCategories: [EventCategory(name: "nature", color: Color.green), EventCategory(name: "sport", color: Color.purple)],
                age: 22,
                street: "Le Panier",
                pastEvents: [],
                futureEvents: []
            ),
            
            User(
                name: "Nina",
                photo: "nina_image",
                favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "culture", color: Color.orange)],
                age: 29,
                street: "Roucas Blanc",
                pastEvents: [],
                futureEvents: []
            )
        ],
        categories: [EventCategory(name: "culture", color: Color.orange), EventCategory(name: "start", color: Color.yellow)],
        discussion: [],
        isFavorite: false
    )
    ]


var categories = [
    EventCategory(name: "food", color: Color.blue),
    EventCategory(name: "sport", color: Color.purple),
    EventCategory(name: "nature", color: Color.green),
    EventCategory(name: "culture", color: Color.orange),
    EventCategory(name: "langue", color: Color.pink),
    EventCategory(name: "start", color: Color.yellow)
]
