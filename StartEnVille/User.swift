//
//  User.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import Foundation

struct User: Identifiable {
    var id = UUID()
    var name: String
    var photo: String
    var favoriteCategories: [EventCategory]
    var age: Int
    var street: String
    var pastEvents: [Event]
    var futureEvents: [Event]
}

var users = [
    User(
        name: "Lola",
        photo: "lola_image",
        favoriteCategories: [EventCategory(name: "food", color: .blue), EventCategory(name: "sport", color: .purple)],
        age: 28,
        street: "La Joliette",
        pastEvents: [],
        futureEvents: []
    ),
    User(
        name: "Mireille",
        photo: "mireille_image",
        favoriteCategories: [EventCategory(name: "food", color: .blue), EventCategory(name: "nature", color: .green)],
        age: 35,
        street: "Vieux-Port",
        pastEvents: [],
        futureEvents: []
    ),
    User(
        name: "Mo",
        photo: "mo_image",
        favoriteCategories: [EventCategory(name: "nature", color: .green), EventCategory(name: "sport", color: .purple)],
        age: 22,
        street: "Le Panier",
        pastEvents: [],
        futureEvents: []
    ),
    User(
        name: "Samira",
        photo: "samira_image",
        favoriteCategories: [EventCategory(name: "nature", color: .green), EventCategory(name: "sport", color: .purple)],
        age: 23,
        street: "Cours Julien",
        pastEvents: [],
        futureEvents: []
    ),
    User(
        name: "Stéphanie",
        photo: "stephanie_image",
        favoriteCategories: [EventCategory(name: "nature", color: .green), EventCategory(name: "food", color: .blue)],
        age: 33,
        street: "L'Estaque",
        pastEvents: [],
        futureEvents: []
    ),
    User(
        name: "Nina",
        photo: "nina_image",
        favoriteCategories: [EventCategory(name: "food", color: .blue), EventCategory(name: "culture", color: .orange)],
        age: 29,
        street: "Roucas Blanc",
        pastEvents: [],
        futureEvents: []
    )
]


