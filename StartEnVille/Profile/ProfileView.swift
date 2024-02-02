//
//  ProfileView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    var users = [
        User(
            name: "Lola",
            photo: "lola_image.png",
            favoriteCategories: [EventCategory(name: "food", color: Color.blue), EventCategory(name: "sport", color: Color.purple)],
            age: 28,
            pastEvents: [],
            futureEvents: []
        ),
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
    ]
    
    var body: some View {
        Text("ProfileView")
    }
}

#Preview {
    ProfileView()
}
