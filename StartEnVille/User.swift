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
    var pastEvents: [Event]
    var futureEvents: [Event]
}

