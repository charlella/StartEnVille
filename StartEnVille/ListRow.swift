//
//  ListRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 06/02/2024.
//

import SwiftUI

struct ListRow: View {
    var event: Event
        //categories
        
        var body: some View {
    //        NavigationView {
                VStack {
    //                Text("Aujourd'hui")
    //                    .font(.title3)
    //                    .fontWeight(.bold)
    //
                  
                        ZStack {
                            Image(event.photo)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 180, height: 100)
                                .cornerRadius(15)
                                .overlay(Image(systemName: "heart.fill"), alignment: .topTrailing)
                                .foregroundColor(.gray)
                            
                                .overlay(Image(systemName: "person.2.fill"), alignment: .bottomTrailing)
                                .foregroundColor(.white)
                                .overlay(
                                    HStack {
                                        ForEach(event.categories) { category in
                                            Image(systemName: "circle.fill")
                                                .foregroundColor(category.color)
                                        }
                                    },alignment: .topLeading)
         
                        }
                        VStack (alignment: .center, spacing: 0) {
                            
                                Text(event.title)
                                    .font(.title3)
                                    .fontWeight(.bold)
            
                            .padding(.bottom, 5)
                            Text(event.formattedDate)
                                .padding(.bottom, 5)
                            Text("organisé par \(event.author.name)")
                                .padding(.bottom, 5)
                            
                            HStack {
                                Image(systemName: "mappin.and.ellipse")
                                Text(event.address.place)
                            }
                            
                        }

                    
    //                Text("Cette semaine")
    //                    .font(.title3)
    //                    .fontWeight(.bold)
    //                    .padding()
    //                Spacer()
    //                Text("Ce mois")
    //                    .font(.title3)
    //                    .fontWeight(.bold)
    //                    .padding()
                    
                 
    //                    .navigationTitle("list")
                        
                }
                .foregroundStyle(.black)
                
    //        }
        }
    }

    #Preview {
        ListRow(event: events[0])
    }
