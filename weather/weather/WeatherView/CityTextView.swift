//
//  CityTextView.swift
//  weather
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct CityTextView: View {
    let cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}


