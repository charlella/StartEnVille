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
                            EventDetail(event: event)
                        }
                    } label: {
                        if let event = event {
                            SearchMapSheetRow(event: event)
                        }
                    }
                }
              //  .frame(maxHeight: 500)

            }
            .padding(.vertical, 5)
//            .navigationTitle("Aperçu")
//            .navigationBarTitleDisplayMode(.inline)
          //  .fixedSize(horizontal: false, vertical: true)
        }
    }
}

#Preview {
    SearchMapSheet(event: events[0])
}
