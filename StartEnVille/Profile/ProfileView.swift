//
//  ProfileView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct ProfileView: View {
    
    
    var body: some View {
        NavigationView {
            //Form {
                //Début du HEADER
                //                        ZStack(alignment: .top) {
                //                            Color(red: 0/255, green: 113/255, blue: 164/255)
                //                                .frame(maxWidth: .infinity)
                //                                .ignoresSafeArea()
                //                            VStack(spacing: 0) {
                //                                VStack(spacing: 0) {
                //                                    Text("Profil")
                //                                        .font(.title.bold())
                //                                        .foregroundStyle(Color(red: 255/255, green: 204/255, blue: 0/255))
                //                                        .accessibilityAddTraits(.isHeader)
                //                                }
                //                                .padding()
                // fin du HEADER
                
                ScrollView {
                    VStack(spacing: 0) {
                        Image("mireille_image")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(50)
                            .frame(height: 200)
                        Text("Mireille")
                            .font(.largeTitle)
                            .padding(.top)
                        Text("35 ans")
                            .font(.title2)
                        
                    }
                    VStack(spacing: 0) {
                        Text("J'aime:")
                            .font(.title)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                            .padding(.top)
                        LazyVGrid(columns: [.init(), .init(), .init()])  {
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
                        .padding(.horizontal, 10)
                        .padding()
                    }
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Historique des évènements passés")
                            .font(.title2)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                            .padding(.top)
                        
                        ForEach(events [1...2]) { event in
                            NavigationLink {
                                EventDetail(data: event)
                            } label: {
                                ProfileEventsRow(event: event)
                            }
                        }
                        .padding(.vertical)
                    }
                    .padding(.horizontal, 20)
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Evènements Futurs")
                            .font(.title2)
                            .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                        //                        .multilineTextAlignment(.leading)
                        ForEach(events[0...0]) { event in
                            NavigationLink {
                                EventDetail(data: event)
                            } label: {
                                ProfileEventsRow(event: event)
                            }
                        }
                        .padding(.vertical)
                    }
                    //                .padding(.leading, 10)
                    .padding(.horizontal, 20)
                }
//                .toolbar {
//                                ToolbarItem(placement: .navigationBarLeading) {
//                                    Spacer()
//                                }
//                                ToolbarItem(placement: .principal) {
//                                    Text("Profil")
//                                        .font(.headline)
//                                        .foregroundColor(.yellow)
//                                }
//                                ToolbarItem(placement: .navigationBarTrailing) {
//                                    Spacer()
//                                }
//                            }
//                            .navigationBarTitleDisplayMode(.inline)
            }
            //                            .background()
        
        }
    }
//}
//    }
//}
#Preview {
    ProfileView()
}
