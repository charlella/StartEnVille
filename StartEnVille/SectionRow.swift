//
//  SectionRow.swift
//  StartEnVille
//
//  Created by charlene hoareau on 18/02/2024.
//

import SwiftUI

struct SectionRow: View {
    var title: String
        var events: [Event]

        var body: some View {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                
                ScrollView(.horizontal) {
                    Row(events: events)
                }
            }
        }
    }


#Preview {
    SectionRow(title: "Aujourd'hui", events: [events[0], events[1]])
}
