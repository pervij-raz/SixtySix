//
//  SplashScreen.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Text("Hello, dear!").fontDesign(.rounded).font(.largeTitle).foregroundColor(.brand)
            LottieView(fileName: "LoadingAnimation").scaledToFit()
        }
        .background(.white)
    }
}

#Preview {
    SplashScreen()
}

