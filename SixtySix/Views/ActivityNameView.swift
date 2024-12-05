//
//  ActivityNameView.swift
//  SixtySix
//
//  Created by Volha Bychok on 26.11.2024.
//

import SwiftUI

struct ActivityNameView: View {
    @State var activityName: String = ""
    @FocusState var emailFieldIsFocused: Bool

    var body: some View {
        Text("Write a name for your activity")
            .font(.headline)
            .padding()
        TextField(
            "activity name",
            text: $activityName
        )
        .padding()
        .focused($emailFieldIsFocused)
        .onSubmit {
            validate(name: activityName)
        }
        .textInputAutocapitalization(.never)
        .disableAutocorrection(true)
        .border(.secondary)
        .textFieldStyle(.plain)
    }

    private func validate(name: String) {

    }
}

#Preview {
    ActivityNameView()
}
