//
//  MainView.swift
//  SixtySix
//
//  Created by Volha Bychok on 11.11.2024.
//

import SwiftUI

struct MainView: View {
    @State var isPresented = false

    
    var body: some View {

        ZStack(alignment: .bottomTrailing) {
            TabView {
                NavigationStack{
                    TodayView()
                }
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
                Button {
                    isPresented.toggle()
                } label: {
                    Image(systemName: "plus")
                        .font(.title.weight(.semibold))
                        .padding()
                        .background(.brand)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                        .shadow(radius: 4, x: 0, y: 4)
                }
                .padding()
                .padding(.bottom, 70)
                .fullScreenCover(isPresented: $isPresented) {
                    NavigationStack {
                        CreateActivityStep1View()
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
