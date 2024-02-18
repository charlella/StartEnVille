//
//  SearchBar.swift
//  StartEnVille
//
//  Created by charlene hoareau on 02/02/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.leading, 8)
            TextField(placeholder, text: $text)
//                .frame(width: 250)
                .padding(8)
                .background(.white)
                .cornerRadius(8)
            //.padding(.trailing, 8)
                .keyboardType(.alphabet)
                .overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(Color(red: 0/255, green: 113/255, blue: 164/255), lineWidth: 2))
                .foregroundColor(.black)
                .accentColor(.white)
                .opacity(text.isEmpty ? 0.8 : 1.0)
            
            
            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .padding(.trailing, 8)
                }
            } else {
                Spacer().frame(width: 36)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SearchBar(text: .constant(""), placeholder: "Rechercher un évènement")
        .previewLayout(.sizeThatFits)
        .preferredColorScheme(.dark)
}
