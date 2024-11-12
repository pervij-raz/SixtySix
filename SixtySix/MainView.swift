//
//  MainView.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Label("Today", systemImage: "list.bullet.rectangle.portrait")
                        .foregroundStyle(.brand)
                }
            
            StatisticsView()
                .tabItem {
                    Label("Progress", systemImage: "chart.bar.horizontal.page")
                        .foregroundStyle(.brand)
                }
        }
    }
}

#Preview {
    MainView()
}
