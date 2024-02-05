//
//  SearchMapSheet.swift
//  StartEnVille
//
//  Created by charlene hoareau on 04/02/2024.
//

import SwiftUI

struct SearchMapSheet: View {
    @Environment(\.dismiss) var dismiss
    
    var event: Event?
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    NavigationLink {
                        if let event = event {
                            EventDetail(data: event)
                        }
                    } label: {
                        if let event = event {
                            SearchMapSheetRow(event: event)
                        }
                    }
                }
            }
            .frame(maxHeight: .infinity)
            .navigationTitle("Aperçu")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchMapSheet(event: events[0])
}
