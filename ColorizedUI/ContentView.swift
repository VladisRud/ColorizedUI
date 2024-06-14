//
//  ContentView.swift
//  ColorizedUI
//
//  Created by Влад Руденко on 11.06.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue = Double.random(in: 0...255).rounded()
    @State private var greenValue = Double.random(in: 0...255).rounded()
    @State private var blueValue = Double.random(in: 0...255).rounded()
    
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack {
                ColoredView(redColor: redValue, greenColor: greenValue, blueColor: blueValue)
                VStack {
                    SliderColor(colorValue: $redValue, tintColor: .red)
                    SliderColor(colorValue: $greenValue, tintColor: .green)
                    SliderColor(colorValue: $blueValue, tintColor: .blue)
                } 
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
