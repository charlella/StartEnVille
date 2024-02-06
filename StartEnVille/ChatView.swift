//
//  ChatView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct ChatView: View {
    var isAuthor: Bool = false
    var isParticipant: Bool = false
    
    var body: some View {
        NavigationView {
            //Début du HEADER
            ZStack(alignment: .top) {
                Color(red: 0/255, green: 113/255, blue: 164/255)
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Text("Discussions")
                            .font(.title.bold())
                            .foregroundStyle(Color(red: 255/255, green: 204/255, blue: 0/255))
                            .accessibilityAddTraits(.isHeader)
                    }
                    .padding()
                    // fin du HEADER
                    VStack(spacing: 0) {
                        if isAuthor || isParticipant {
                            List(events) { event in
                                NavigationLink(destination: ChatEvent(data: event)) {
                                    ChatRow(event: event)
                                }
                            }
                        } else {
                            Spacer()
                            Form {
                                Text("Vous n'êtes ni l'auteur ni un participant à un événement.")
                                    .multilineTextAlignment(.center)
                                    .padding(.bottom, 25)
                                
//                                Image("startenville")
//                                    .resizable()
//                                    .scaledToFit()
//                                    .frame(width: 300)
//                                    .cornerRadius(50)
                            }
                        }
                    }
                    //.navigationTitle("Discussions")
                }
            }
        }
    }
}

#Preview {
    ChatView(isAuthor: true, isParticipant: true)
}
