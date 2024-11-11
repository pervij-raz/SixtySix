//
//  LottieView.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    var fileName: String

    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        animationView.animation = LottieAnimation.named(fileName)
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        view.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])

        return view
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
