//
//  BackgroundView.swift
//  weather
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct BackgroundView: View {
    let topColor: Color
    let bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor],
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}