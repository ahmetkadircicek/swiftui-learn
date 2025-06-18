//
//  OnboardView.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI

struct OnboardTabItem: View {
    let onboardModel: OnboardModel
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 240, height: 292)
                .foregroundStyle(.gullGray)
                .cornerRadius(12)
            
            Spacer()
                .frame(height: 60)
            
            Text(onboardModel.title)
                .font(.title2)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.6)
                    .foregroundStyle(Color(.label))
            
            Spacer()
                .frame(height: 20)
            
            Text(onboardModel.subtitle)
                .font(.body)
                .foregroundStyle(Color(.secondaryLabel))
                .multilineTextAlignment(.center)
                .frame(height: 80, alignment: .top)
        }
    }
}

#Preview {
    OnboardTabItem(onboardModel: OnboardItems.mockData)
}


