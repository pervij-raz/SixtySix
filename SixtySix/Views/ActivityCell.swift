//
//  ActivityCell.swift
//  SixtySix
//
//  Created by Volha Bychok on 14.11.2024.
//

import SwiftUI

struct ActivityCell: View {
    let activity: Activity
    var body: some View {
        HStack(spacing: 20) {
            Image(activity.imageName, bundle: nil)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
            Text(activity.title)
            Spacer()
            Button(action: {
                activity.isOn.toggle()
            }, label: {
                Image(systemName: activity.isOn ? "checkmark.square" : "square")
            })
        }
    }
}

#Preview {
    ActivityCell(activity: Activity(title: "бегит", rhythm: .init(day: true, week: false, month: false), fromDate: Date(), toDate: Date().addingTimeInterval(1000000), imageName: "work")).modelContainer (for: [Activity.self])
}

