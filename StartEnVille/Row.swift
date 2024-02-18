//
//  Row.swift
//  StartEnVille
//
//  Created by charlene hoareau on 18/02/2024.
//

import SwiftUI

struct Row: View {
    var events: [Event]

        var body: some View {
            HStack {
                ForEach(events) { event in
                    ListRow(event: event)
                }
            }
        }
    }

#Preview {
    Row(events: [])
}
