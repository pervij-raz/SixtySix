//
//  CreateActivityFinalView.swift
//  SixtySix
//
//  Created by Volha Bychok on 26.11.2024.
//

import SwiftUI

struct CreateActivityFinalView: View {
    @State private var date = Date()
    var body: some View {
        VStack {
            DatePicker("Choose a date for activity start", selection: $date, displayedComponents: .date)
                .pickerStyle(.wheel)
                .font(.headline)
                .padding([.top, .bottom])
            DatePicker("Choose a date for activity end", selection: $date, displayedComponents: .date)
                .pickerStyle(.wheel)
                .font(.headline)
                .padding([.top, .bottom])
        }
        .padding()
        Spacer()
        HStack {
            Spacer()
            Button("Create activity", action: {

            })
            .buttonStyle(.bordered)
            .foregroundStyle(.blue)
            .padding(.bottom, 100)
            .padding(.trailing, 24)
            .buttonBorderShape(.capsule)
            .tint(.brand)
        }
        .navigationTitle("Name of activity")
    }
}

#Preview {
    NavigationStack {
        CreateActivityFinalView()
    }
}
