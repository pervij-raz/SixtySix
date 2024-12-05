//
//  CreateActivityStep2View.swift
//  SixtySix
//
//  Created by Volha Bychok on 25.11.2024.
//

import SwiftUI

struct CreateActivityStep2View: View {
    @State private var selected = 1
    @State private var selectedWeekDays: [Locale.Weekday] = []
    @State private var selectedDates: [Int] = []
    var days: [Locale.Weekday] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]

    var body: some View {
        VStack {
            ActivityFrequenceHeaderView(selected: $selected)
            if selected == 2 {
                WeekdaySelectionView(selectedDays: $selectedWeekDays)
            } else if selected == 3 {
                CalendarSelectionView(selectedDays: $selectedDates)
            }
            Spacer()
            HStack {
                Spacer()
                NextStepView()
            }
        }
        .navigationTitle("How often are you going to do this activity?")
    }
}

#Preview {
    NavigationStack {
        CreateActivityStep2View()
    }
}
