//
//  SearchMapSheetRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 05/02/2024.
//

import SwiftUI

struct SearchMapSheetRow: View {
    var event: Event
    //categories
    
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
                        .foregroundStyle(.black)
//                    Image(systemName: "person.2.fill")
//                    Text("4")
//                    Image(systemName: "heart.fill")
//                        .foregroundStyle(.red)
                }
                .padding(.bottom, 5)
                Text(event.formattedDate)
                    .foregroundStyle(.black)
                    .padding(.bottom, 5)
                Text("organisé par \(event.author.name)")
                    .foregroundStyle(.black)
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
                .foregroundStyle(.black)                
            }
            Spacer()
            
        }
    }
}

#Preview {
    SearchMapSheetRow(event: events[0])
}
