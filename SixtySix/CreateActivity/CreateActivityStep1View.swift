//
//  CreateActivityView.swift
//  SixtySix
//
//  Created by Volha Bychok on 21.11.2024.
//

import SwiftUI

class ActivityImage: Identifiable {
    let image: ImageAsset

    init(image: ImageAsset) {
        self.image = image
    }
}

struct CreateActivityStep1View: View {

    @Environment(\.dismiss) var dismiss
    @State var activityName: String = ""
    @FocusState var emailFieldIsFocused: Bool

    var images: [ImageAsset] = [Asset.book, Asset.excercise, Asset.home, Asset.mirror, Asset.pillow, Asset.reading, Asset.selfcare, Asset.shopping, Asset.sport, Asset.work]
    var body: some View {
        NavigationStack {
            VStack {
                ActivityNameView()
                ActivityImageView()
                HStack() {
                    Spacer()
                    NextStepView()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }
            .navigationTitle("Create a new activity")
        }
    }
}

#Preview {
    NavigationStack {
        CreateActivityStep1View()
    }
}
