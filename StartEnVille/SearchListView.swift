//
//  SearchListView.swift
//  StartEnVille
//
//  Created by charlene hoareau on 01/02/2024.
//

import SwiftUI

struct SearchListView: View {
    @Binding var searchText: String
    var allEvents: [Event]
    
    var filteredEvents: [Event] {
        if searchText.isEmpty {
            return allEvents
        } else {
            return allEvents.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var todayEvents: [Event] {
        let today = Date()
        return filteredEvents.filter { Calendar.current.isDate($0.dateTime, inSameDayAs: today) }
    }
    
    var thisWeekEvents: [Event] {
        let startOfWeek = Calendar.current.date(from: Calendar.current.dateComponents([.yearForWeekOfYear, .weekOfYear], from: Date()))!
        let endOfWeek = Calendar.current.date(byAdding: .day, value: 7, to: startOfWeek)!
        return filteredEvents.filter { startOfWeek...endOfWeek ~= $0.dateTime }
    }
    
    var thisMonthEvents: [Event] {
        let startOfMonth = Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Date()))!
        let endOfMonth = Calendar.current.date(byAdding: .month, value: 1, to: startOfMonth)!
        return filteredEvents.filter { startOfMonth...endOfMonth ~= $0.dateTime }
    }
    
    var body: some View {
        VStack {
            NavigationView {
                ScrollView(.vertical) {
                    SectionRow(title: "Aujourd'hui", events: todayEvents)
                    SectionRow(title: "Cette semaine", events: thisWeekEvents)
                    SectionRow(title: "Ce mois-ci", events: thisMonthEvents)
                }
                .padding(.top, 50)
//                .padding(.horizontal)
                .padding(.leading)
            }
//            .padding(.horizontal)
            .navigationTitle("Events")
        }
    }
}

#Preview {

            
    return SearchListView(searchText: .constant(""), allEvents: [events[0], events[1]])
}
