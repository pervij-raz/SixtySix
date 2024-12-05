//
//  WeekView.swift
//  SixtySix
//
//  Created by Volha Bychok on 27.11.2024.
//

import SwiftUI

struct WeekView: View {
    @State var days: Range<Int>
    @Binding var selectedDays: [Int]

    var body: some View {
        HStack {
            ForEach(days, id: \.self) { item in
                Text("\(item)")
                    .frame(width: 32, height: 32)
                    .buttonBorderShape(.roundedRectangle)
                    .border(Color.black, width: 1)
                    .background(selectedDays.contains(item) ? .brand : .clear)
                    .onTapGesture {
                        if selectedDays.contains(item) {
                            selectedDays.remove(at: selectedDays.firstIndex(of: item)!)
                        } else {
                            selectedDays.append(item)
                        }
                    }
            }
        }
    }
}
