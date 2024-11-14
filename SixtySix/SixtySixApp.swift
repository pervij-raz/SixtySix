//
//  SixtySixApp.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI
import SwiftData

@main
struct SixtySixApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Activity.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
