//
//  SliderColor.swift
//  ColorizedUI
//
//  Created by Влад Руденко on 11.06.2024.
//

import SwiftUI

struct SliderColor: View {
    @Binding var colorValue: Double
    
    let tintColor: Color

    var body: some View {
        HStack {
            Text(colorValue.formatted())
                .font(.title2)
                .foregroundStyle(.white)
            Slider(
                value: $colorValue,
                in: 0...255,
                step: 1
            )
            .tint(tintColor)
        }
        .padding()
    }
}

#Preview {
    SliderColor(colorValue: .constant(100), tintColor: .red)
}
