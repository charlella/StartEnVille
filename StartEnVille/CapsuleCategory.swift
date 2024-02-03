//
//  CapsuleCategory.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import SwiftUI

struct CapsuleCategory: View {
    
    var categories: [EventCategory]
    
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
    CapsuleCategory(categories: categories)
}
