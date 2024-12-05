//
//  CalendarSelectionView.swift
//  SixtySix
//
//  Created by Volha Bychok on 27.11.2024.
//

import SwiftUI

class ExampleWeek: Identifiable {
    let id = UUID()
    let week: Range<Int>

    init(week: Range<Int>) {
        self.week = week
    }
}

struct CalendarSelectionView: View {
    @State var days: [ExampleWeek] = [
        .init(week: 1..<8),
        .init(week: 8..<15),
        .init(week: 15..<22),
        .init(week: 22..<29),
        .init(week: 29..<32)]

    @Binding var selectedDays: [Int]

    var daysInMonth = 1..<31

    var body: some View {
        VStack {
            Text("Choose a day or some of them")
                .padding()
            VStack(alignment: .leading) {
                ForEach(days) { day in
                    WeekView(days: day.week, selectedDays: $selectedDays)
                }
            }
        }
        .padding()
    }
}
