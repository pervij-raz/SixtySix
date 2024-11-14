//
//  TodayView.swift
//  SixtySix
//
//  Created by Volha Bychok on 12.11.2024.
//

import SwiftUI
import SwiftData

struct TodayView: View {

    @Environment(\.modelContext) private var modelContext
    @Query private var activities: [Activity] = []

    var data: [Activity] = [
        Activity(title: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "sport"),
        Activity(title: "бегит", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "work"),
        Activity(title: "турник", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "mirror"),
        Activity(title: "анжумания", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "excercise"),
        Activity(title: "спат", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "pillow")
    ]

    var body: some View {
        List {
            ForEach(activities) { activity in
                ActivityCell(activity: activity)
                        }

        }.onAppear {
            for d in data {
                modelContext.insert(d)
            }
        }.listStyle(.sidebar)
            .listRowBackground(Color.clear)
            .listRowSpacing(10)
            .navigationTitle("Activities")
            .padding(.top, 24)
    }
}

#Preview {
    TodayView().modelContainer (for: [Activity.self])
}
