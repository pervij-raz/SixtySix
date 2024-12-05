//
//  NextStepView.swift
//  SixtySix
//
//  Created by Volha Bychok on 26.11.2024.
//

import SwiftUI

struct NextStepView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("NEXT", destination: CreateActivityStep2View())
        }
        .buttonStyle(.bordered)
        .foregroundStyle(.blue)
        .padding([.top, .bottom], 100)
        .padding(.trailing, 24)
        .buttonBorderShape(.capsule)
        .tint(.brand)
    }
}

#Preview {
    NextStepView()
}
