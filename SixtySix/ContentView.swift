//
//  ContentView.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
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
        .modelContainer(for: Item.self, inMemory: true)
}
