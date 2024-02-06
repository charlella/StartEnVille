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
            //Début du HEADER
            ZStack(alignment: .top) {
                Color(red: 0/255, green: 113/255, blue: 164/255)
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea()
                VStack(spacing: 0) {
                    VStack(spacing: 0) {
                        Text("Profil")
                            .font(.title.bold())
                            .foregroundStyle(Color(red: 255/255, green: 204/255, blue: 0/255))
                            .accessibilityAddTraits(.isHeader)
                    }
                    .padding()
                    // fin du HEADER
                    
                    VStack(spacing: 0) {
                        Form {
                            Text("ProfileView")
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    ProfileView()
}
