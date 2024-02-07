//
//  EventParticipants.swift
//  StartEnVille
//
//  Created by charlene hoareau on 06/02/2024.
//

import SwiftUI

struct EventParticipants: View {
    var event: Event
    
    var body: some View {
        VStack {
            VStack {
                Text("Auteur de l'évènement")
                    .font(.title)
                    .padding()
                    .foregroundStyle(Color(red: 0/255, green: 113/255, blue: 164/255))
                
                // Affichage de l'auteur de l'événement
                    EventAuthorRow(event: event, author: event.author)
            }

            
            VStack(spacing: 0) {
                Text("Participants")
                    .font(.title)
                    .padding()
                    .foregroundStyle(Color(red: 0/255, green: 113/255, blue: 164/255))
                // Affichage de tous les participants à l'événement
                ScrollView {
                        ForEach(event.participants) { participant in
                            EventParticipantsRow(event: event, participant: participant)
                        }
                    }
            }

        }
    }
}


#Preview {
    EventParticipants(event: events[0])
}
