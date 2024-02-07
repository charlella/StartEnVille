//
//  EventParticipantsRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 06/02/2024.
//

import SwiftUI

struct EventParticipantsRow: View {
    var event: Event
    var participant: User

    var body: some View {
            HStack {
                Spacer()
                Image(participant.photo)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 120, height: 120)
                    .cornerRadius(15)
                    .padding(.trailing, 7)
                Spacer()
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        Text(participant.name)
                            .font(.title3)
                            .fontWeight(.bold)
//                        Image(systemName: "heart.fill")
//                            .foregroundStyle(.red)
                    }
                    .padding(.bottom, 5)
                    Text("\(participant.age) ans")
                        .padding(.bottom, 5)
//                    HStack {
//                        Image(systemName: "mappin")
//                        Text(participant.street)
//                            .font(.subheadline)
//                    }
//                    .padding(.bottom, 5)
                    HStack {
                        ForEach(participant.favoriteCategories) { category in
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
                        Text(participant.street)
                            .font(.subheadline)
                    }
                }
                Spacer()
            }
        }
    }


#Preview {
    EventParticipantsRow(event: events[0], participant: events[0].participants[0])
}
