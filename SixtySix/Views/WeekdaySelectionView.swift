//
//  WeekdaySelectionView.swift
//  SixtySix
//
//  Created by Volha Bychok on 27.11.2024.
//

import SwiftUI

struct WeekdaySelectionView: View {
    @Binding var selectedDays: [Locale.Weekday]
    var days: [Locale.Weekday] = [.monday, .tuesday, .wednesday, .thursday, .friday, .saturday, .sunday]

    var body: some View {
        VStack {
            Text("Choose a day or some of them")
                .padding()
            VStack {
                ForEach(days, id: \.self) { day in
                    Text(String(day.rawValue))
                        .bold()
                        .foregroundColor(.white)
                        .frame(width: 100, height: 30)
                        .background(selectedDays.contains(day) ? Color.cyan.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .onTapGesture {
                            selectedDays.append(day)
                        }
                }
            }
        }
        .padding()
    }
}
