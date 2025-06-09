//
//  ContentView.swift
//  weather
//
//  Created by Ahmet on 14.06.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : .white)
            VStack {
                CityTextView(cityName: "Istanbul, TR")
                MainWeatherStatusView(imageName: isNight ? "moon.fill" : "cloud.sun.fill")
                Spacer()
                HStack(spacing: 20) {
                    WeatherView(
                        topText: "PZT",
                        imageName: "cloud.sun.fill",
                        bottomText: "22°"
                    )
                    WeatherView(
                        topText: "SAL",
                        imageName: "wind",
                        bottomText: "24°"
                    )
                    WeatherView(
                        topText: "CAR",
                        imageName: "wind",
                        bottomText: "16°"
                    )
                    WeatherView(
                        topText: "PER",
                        imageName: "sunset.fill",
                        bottomText: "20°"
                    )
                    WeatherView(
                        topText: "CUM",
                        imageName: "cloud.fill",
                        bottomText: "21°"
                    )
                }.padding(.all)
                Spacer()
                DayTimeButton(title: "Change Day Time",
                              backgroundColor: isNight ? .gray : .white,
                              foregroundColor: isNight ? .white : .blue, isNight: $isNight)
                Spacer()
            }
        }
    }
}



#Preview {
    ContentView()
}








