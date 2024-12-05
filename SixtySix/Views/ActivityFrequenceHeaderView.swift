//
//  ActivityFrequenceHeaderView.swift
//  SixtySix
//
//  Created by Volha Bychok on 27.11.2024.
//

import SwiftUI

struct ActivityFrequenceHeaderView: View {
    @Binding var selected: Int

    var body: some View {
        Picker("How often are you going to do this activity?", selection: $selected) {
            Text("daily").tag(1)
            Text("weekly").tag(2)
            Text("monthly").tag(3)
        }
        .pickerStyle(.palette)
        .font(.headline)
    }
}
