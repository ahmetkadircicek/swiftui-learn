//
//  MainWeatherStatusView.swift
//  weather
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct MainWeatherStatusView: View {
    var imageName: String
    
    var body: some View {
        VStack (spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,
                       height: 180)
            Text("24°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

