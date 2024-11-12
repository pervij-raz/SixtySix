//
//  SplashScreen.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        Spacer()
        Text("Hello, dear!").fontDesign(.rounded).font(.largeTitle).foregroundColor(.brand)
        LottieView(fileName: Constants.Animation.launchFileName).scaledToFit()
            .background(.white)
    }
}

#Preview {
    SplashScreen()
}

