//
//  Activity.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import Foundation
import SwiftData
import Foundation

@Model
final class Activity: Identifiable {
    var title: String
    var rhythm: Rhythm
    var fromDate: Date
    var toDate: Date
    var imageName: String
    var isOn: Bool

    @Model
    final class Rhythm {
        var day: Bool
        var week: Bool
        var month: Bool

        var daysOfWeek: [Int]
        var daysOfMonth: [Int]

        init(day: Bool, week: Bool, month: Bool, daysOfWeek: [Int] = [], daysOfMonth: [Int] = []) {
            self.day = day
            self.week = week
            self.month = month
            self.daysOfWeek = daysOfWeek
            self.daysOfMonth = daysOfMonth
        }
    }

    init(title: String, rhythm: Rhythm, fromDate: Date, toDate: Date, imageName: String, isOn: Bool = false) {
        self.title = title
        self.rhythm = rhythm
        self.fromDate = fromDate
        self.toDate = toDate
        self.imageName = imageName
        self.isOn = isOn
    }
}
