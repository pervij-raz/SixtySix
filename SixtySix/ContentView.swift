//
//  ContentView.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI

struct ContentView: View {

    @State private var isSplashScreen = true

        var body: some View {
            ZStack {
                if isSplashScreen {
                    SplashScreen()
                } else {
                    MainView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                    withAnimation {
                        isSplashScreen = false
                    }
                }
            }
        }
}

#Preview {
    ContentView()
}
