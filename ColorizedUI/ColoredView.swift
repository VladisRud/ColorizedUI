//
//  ColoredView.swift
//  ColorizedUI
//
//  Created by Влад Руденко on 13.06.2024.
//

import SwiftUI

struct ColoredView: View {
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var body: some View {
        Color(red: redColor / 255, green: greenColor / 255, blue: blueColor / 255)
            .clipShape(.rect(cornerRadius: 20))
            .frame(height: 200)
            .overlay(
                RoundedRectangle
                    .rect(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 5)
            )
            .padding()
    }
}

#Preview {
    ColoredView(redColor: 100, greenColor: 50, blueColor: 250)
}
