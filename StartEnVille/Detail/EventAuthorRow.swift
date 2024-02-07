//
//  EventAuthorRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 07/02/2024.
//

import SwiftUI

struct EventAuthorRow: View {
    var event: Event
    var author: User
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                //Spacer()
                Image(author.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .cornerRadius(15)
                    .padding(.trailing, 20)
                //Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(event.author.name)
                            .font(.title3)
                            .fontWeight(.bold)
                        //                        Image(systemName: "heart.fill")
                        //                            .foregroundStyle(.red)
                    }
                    .padding(.bottom, 5)
                    Text("\(author.age) ans")
                        .padding(.bottom, 5)
                    //                    HStack {
                    //                        Image(systemName: "mappin")
                    //                        Text(participant.street)
                    //                            .font(.subheadline)
                    //                    }
                    //                    .padding(.bottom, 5)
                    HStack {
                        ForEach(author.favoriteCategories) { category in
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
                        Text(author.street)
                            .font(.subheadline)
                    }
                }
                // Spacer()
            }
            .padding()
            .background(Color(red: 0/255, green: 113/255, blue: 164/255)
                .opacity(0.3).cornerRadius(30))
            //.frame(width: 350, height: 300)
        }
        //Spacer()
    }
}


#Preview {
    EventAuthorRow(event: events[0], author: events[0].author)
}
