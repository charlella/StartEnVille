//
//  CapsuleCategory.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import SwiftUI

struct CapsuleCategory: View {
    
    var categories = [
        EventCategory(name: "food", color: Color.blue),
        EventCategory(name: "sport", color: Color.purple),
        EventCategory(name: "nature", color: Color.green),
        EventCategory(name: "culture", color: Color.orange),
        EventCategory(name: "language", color: Color.pink),
        EventCategory(name: "start", color: Color.yellow)
    ]
    
    var body: some View {
        ForEach(categories) { category in
            Text(category.name)
                .font(.subheadline.weight(.black))
                .padding(5)
                .frame(minWidth: 85)
                .background(category.color)
                .foregroundStyle(.white)
                .clipShape(.capsule)
        }
    }
}

#Preview {
    CapsuleCategory()
}
