//
//  ChatRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 06/02/2024.
//

import SwiftUI

struct ChatRow: View {
    var event: Event
    
    var body: some View {
        HStack {
            Spacer()
            Image(event.photo)
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120)
                .cornerRadius(15)
                .padding(.trailing, 10)
            Spacer()
            VStack (alignment: .leading, spacing: 0) {
                HStack {
                    Text(event.title)
                        .font(.title3)
                        .fontWeight(.bold)
//                    Image(systemName: "person.2.fill")
//                    Text("4")
//                    Image(systemName: "heart.fill")
//                        .foregroundStyle(.red)
                }
                .padding(.bottom, 5)
                Text(event.formattedDate)
                    .padding(.bottom, 5)
                Text("organisé par \(event.author.name)")
                    .padding(.bottom, 5)
                HStack {
                    ForEach(event.categories) { category in
                        Text(category.name)
                            .font(.subheadline.weight(.black))
                            .padding(5)
                            .frame(minWidth: 65)
                            .background(category.color)
                            .foregroundStyle(.white)
                            .clipShape(.capsule)
                    }
                }
                .padding(.bottom, 5)
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text(event.address.place)
                        .font(.subheadline)
                }
                
            }
            Spacer()
            
        }
    }
}


#Preview {
    ChatRow(event: events[0])
}
