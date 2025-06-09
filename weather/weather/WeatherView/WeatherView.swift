//
//  WeatherView.swift
//  weather
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct WeatherView: View {
    let topText: String
    let imageName: String
    let bottomText: String
    
    var body: some View {
        VStack {
            Text(topText)
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,
                       height: 40)
            Text(bottomText)
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}