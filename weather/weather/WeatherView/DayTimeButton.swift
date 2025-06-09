//
//  DayTimeButton.swift
//  weather
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct DayTimeButton: View {
    var title: String
    var backgroundColor: Color
    var foregroundColor: Color
    @Binding var isNight: Bool
    
    var body: some View {
        Button {
            isNight.toggle()
        } label: {
            Text("Change Day Time")
                .frame(maxWidth: .infinity, minHeight: 50)
                .background(backgroundColor.gradient)
                .foregroundColor(foregroundColor)
                .font(.system(size: 20, weight: .bold))
                .cornerRadius(8)
                .padding(.horizontal, 50)
            
        }
    }
}
