//
//  StartView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 08/02/2024.
//

import SwiftUI

struct StartView: View {
    
    var body: some View {
        NavigationStack {
        ScrollView {
            VStack {
                
                HStack {
                    Text("7 nouvelles personnes dans ta ville")
                    Image(systemName: "person.2.fill")
                        .foregroundStyle(Color(red: 0/255, green: 113/255, blue: 164/255))
                }
                ScrollView(.horizontal) {
                    HStack  {
                        //                        Spacer()
                        VStack {
                            Image("samira_image")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Text("Samira")
                        }
                        VStack {
                            Image("Ben")
                                .resizable()
                                .frame(width: 80, height: 80)
                            Text("Ben")
                        }
                        VStack {
                            Image("jacky_image")
                                .resizable()
                                .frame(width: 70, height: 80)
                            Text("Jacky")
                            
                        }
                        VStack {
                            Image("Yvette")
                                .resizable()
                                .frame(width: 70, height: 80)
                            Text("Yvette")
                        }
                        VStack {
                            Image("Paul")
                                .resizable()
                                .frame(width: 70, height: 80)
                            Text("Paul")
                        }
                        VStack {
                            Image("Agathe")
                                .resizable()
                                .frame(width: 70, height: 80)
                            Text("Agathe")
                            
                        }
                        VStack {
                            Image("anais_image")
                                .resizable()
                                .frame(width: 70, height: 80)
                            Text("Anais")
                        }
                        
                        
                        
                        //.padding()
                        //                           Spacer()
                    }
                    
                    
                    
                }
                .padding(.horizontal)
                //                .padding(.vertical)
                VStack(alignment: .leading, spacing: 10) {
                    Image("Logo2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 250)
                    
                }
                
                VStack(alignment: .leading, spacing: 7) {
                    HStack {
                        Image("hospital")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 10)
                        
                        Button(action: {
                            // Action ?
                        }) {
                            Text("Santé")
                                .padding(.horizontal, 10)
                                .foregroundColor(.white)
                                .background(Color(red: 0/255, green: 113/255, blue: 164/255))
                                .cornerRadius(10)
                        }
                        .frame(width: 150, height: 30)
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                        )
                    }
                    HStack {
                        Image("siren")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 10)
                        
                        Button(action: {
                            // Action ?
                        }) {
                            Text("Urgences")
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                        }
                        .frame(width: 150, height: 30)
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                        )
                    }
                    
                    HStack {
                        Image(systemName: "info.circle")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 10)
                        
                        Button(action: {
                            // Action ?
                        }) {
                            Text("Information")
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                                .background(Color(red: 0/255, green: 113/255, blue: 164/255))
                                .cornerRadius(10)
                        }
                        .frame(width: 150, height: 30)
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                        )
                    }
                    
                    HStack {
                        Image("town-hall")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .padding(.trailing, 10)
                        
                        Button(action: {
                            // Action
                        }) {
                            Text("Administration")
                                .padding(.horizontal, 20)
                                .foregroundColor(.white)
                                .background(Color(red: 0/255, green: 113/255, blue: 164/255))
                                .cornerRadius(10)
                        }
                        .frame(width: 150, height: 30)
                        .padding(.horizontal, 20)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(red: 0/255, green: 113/255, blue: 164/255))
                        )
                    }
                }
            }
            .navigationTitle("Start")
            .navigationBarTitleDisplayMode(.inline)
            }
//        Spacer()
        }
    }
}

#Preview {
    StartView()
}
