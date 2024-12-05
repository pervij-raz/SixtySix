//
//  ActivityImageView.swift
//  SixtySix
//
//  Created by Volha Bychok on 26.11.2024.
//

import SwiftUI

struct ActivityImageView: View {
    var images: [ImageAsset] = [Asset.book, Asset.excercise, Asset.home, Asset.mirror, Asset.pillow, Asset.reading, Asset.selfcare, Asset.shopping, Asset.sport, Asset.work]

    var body: some View {
        Text("Choose an image for your activity")
            .font(.headline)
            .padding(.top, 80)
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack {
                ForEach(images.map { ActivityImage(image: $0)}, id: \.id) { item in
                    Image(asset: item.image)
                        .resizable()
                        .scaledToFit()
                        .border(Color.accentColor, width: 1)
                        .onTapGesture {
                            print("tap \(item.image.name)")
                        }
                }
                .listStyle(.plain)
            }
            .padding()
        }.frame(height: 160)
    }
}

#Preview {
    ActivityImageView()
}
