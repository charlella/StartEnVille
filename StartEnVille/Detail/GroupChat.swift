//
//  GroupChat.swift
//  StartEnVille
//
//  Created by charlene hoareau on 07/02/2024.
//

import SwiftUI

struct GroupChat: View {@State var text = ""
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
            
            VStack (alignment: .leading, spacing: 0)
            {
                HStack {
                    Text(event.title)
                        .font(.title3)
                        .fontWeight(.bold)
                    //                    Image(systemName: "person.2.fill")
                    //                    Text("4")
                    //                    Image(systemName: "heart.fill")
                    //                        .foregroundStyle(.red)
                }
                .padding(.bottom, 5)
                Text(event.formattedDate)
                    .padding(.bottom, 5)
                Text("organisé par \(event.author.name)")
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
                        .font(.caption)
                }
                
            }
            
            Spacer()
            
            
            
            
        }
        Divider()
        .padding(.bottom, 150)
        
        
        
        List {
            
            MessageRow(text: "Salut, je suis content de vous rencontrer !", isSender: true, time: "Yesterday 9:41")
            MessageRow(text: "Bonjour, c'est pareil pour moi ! Il est prévu qu'il fait beau, alors profitons-en ☀️  ", isSender: false, time: "Read 10:02 AM")
            MessageRow(text: "Super !", isSender: true, time: "10:35 AM")
            MessageRow(text: "A bientôt! ", isSender: true, time: "11:45 AM")
            
        }
        .listStyle(PlainListStyle())
        
        
        VStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.black)
                    .padding(.leading, 8)
                
                TextField("Message", text: $text)
                    .frame(maxWidth: 350)
                    .padding(8)
                    .background(Color.white)
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color(red: 0/255, green: 113/255, blue: 164/255), lineWidth: 2).opacity(0.5)
                    )
                    .foregroundColor(.black)
                    .accentColor(.white)
                
                Image(systemName: "mic")
                    .foregroundColor(.black)
                    .padding(.trailing, 8)
            }
            
        }
        
    }
}


struct MessageRow: View {
    var text: String
    var isSender: Bool
    var time: String
    
    var body: some View {
        HStack {
            if isSender {
                Spacer()
                Text(time)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 10)
            }
            
            VStack(alignment: isSender ? .trailing : .leading, spacing: 4) {
                Text(text)
                    .padding(10)
                    .background(isSender ? Color.blue : Color.gray.opacity(0.2))
                    .foregroundColor(isSender ? .white : .black)
                    .cornerRadius(15)
            }
            
            if !isSender {
                Spacer()
                Text(time)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 2)
            }
            
        }
        
        
        
    }
    
}


#Preview {
    GroupChat(event: events[1])
}
