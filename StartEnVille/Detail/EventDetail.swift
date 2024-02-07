//
//  EventDetail.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct EventDetail: View {
    @State var isHeartFilled = false
    @State var event: Event
    
    var body: some View {
        NavigationStack {
            VStack {
                //                HStack {
                //                    Spacer()
                //                    Image(systemName: "wifi")
                //                        .foregroundColor(.black)
                //                        .padding(.trailing, 8)
                //                    Image(systemName: "battery.100")
                //                        .foregroundColor(.black)
                //                        .padding(.trailing, 16)
                //                }
                //                .padding(.top, 8)
                //                .overlay(
//                Rectangle()
//                    .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
//                    .ignoresSafeArea(.all, edges: .top)
//                    .frame(height: 60)
//                //                )
//                    .overlay(
//                        Text("Détails")
//                            .font(.title)
//                            .fontWeight(.bold)
//                            .foregroundColor(Color(red: 255/255, green: 204/255, blue: 0/255))
//                    )
                
                //                HStack {
                //                    Spacer()
                //                    Image(systemName: "wifi")
                //                        .foregroundColor(.black)
                //                        .padding(.trailing, 8)
                //                    Image(systemName: "battery.100")
                //                        .foregroundColor(.black)
                //                        .padding(.trailing,10)
                //                }
                //                .padding(.top, -60)
                //                .padding(.bottom, 20)
                
                VStack {
                    //Spacer()
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.gray.opacity(0.15))
                        .frame(width: 350, height: 310)
                        .overlay {
                            VStack(alignment: .center, spacing: 0.5) {
                                Image(event.photo)
                                //
                                    .resizable()
                                //.scaledToFill()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 250, height: 200)
                                //                                    .cornerRadius(15)
                                    .padding()
                                
                                //Spacer()
                                
                                HStack {
                                    
                                    Text(event.title)
                                        .font(.title)
                                        .padding()
                                    
                                    
                                    Button(action: {
                                                    event.isFavorite.toggle() 
                                        print(event.isFavorite)
                                                }) {
                                                    Image(systemName: event.isFavorite ? "heart.fill" : "heart")
                                                        .foregroundColor(event.isFavorite ? .red : .gray)
                                                        .font(.title2)
                                                }
                                    
                                }
                                
                                
                            }
                        }
                    
                    List {
                        Label(event.formattedDate, systemImage: "calendar")
                        Label(event.address.place, systemImage: "location")
                        NavigationLink(destination: EventParticipants(event: event)) {
                            Label("\(event.author.name) vous invite avec \(event.participants.count) autres", systemImage: "person.fill")
                        }
                        
                        DisclosureGroup("Plus d'info") {
                            Text(event.description)
                                .font(.system(size: 20))
                                .padding(.bottom, 10)
                        }
                    }
                    .font(.system(size: 20))
                    
                    NavigationLink(destination: GroupChat(event: event)) {
                        Text("Message au Groupe")
                            .font(.headline)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255)))
                            .padding(.top, 20)
                    }
                }
            }
//            .navigationTitle("Détails")
//            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

#Preview {
    EventDetail(event: events[0])
}
