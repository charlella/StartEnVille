//
//  SearchListView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct SearchListView: View {
    var body: some View {
            NavigationView {
                ScrollView(.vertical) {
                    
                    VStack {
                        VStack(alignment: .leading) {
                            Text("Aujourd'hui:")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            
                            ScrollView(.horizontal) {
                                HStack  {
                                    ForEach(events [0...2]) { event in
                                        NavigationLink {
                                            EventDetail(event: event)
                                        } label: {
                                            ListRow(event: event)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.top, 70)
                        .padding(.horizontal)
                        
                        VStack(alignment: .leading) {
                            Text("Cette semaine:")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            
                            
                            ScrollView(.horizontal) {
                                HStack  {
                                    ForEach(events [3...5]) { event in
                                        NavigationLink {
                                            EventDetail(event: event)
                                        } label: {
                                            ListRow(event: event)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        //                        Spacer()
                        
                        VStack(alignment: .leading) {
                            Text("Ce mois:")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding()
                            ScrollView(.horizontal) {
                                HStack  {
                                    ForEach(events [6...8]) { event in
                                        NavigationLink {
                                            EventDetail(event: event)
                                        } label: {
                                            ListRow(event: event)
                                        }
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
//                        Spacer()
                    
//                            .navigationTitle("list")
                        
                        
                        
                        
                        
                        
                    }
                }
            }
        }

#Preview {
    SearchListView()
}
