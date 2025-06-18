//
//  OnboardView.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI

struct OnboardView: View {
    @StateObject var onboardViewModel = OnboardViewModel()
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.white.gradient)
                .ignoresSafeArea()
            
            VStack {
                OnboardTabView(onboardViewModel: onboardViewModel)
                
                PageIndicator(numberOfPages: OnboardItems.onboardItems.count,
                              currentPage: onboardViewModel.selectedIndex)
                
                Spacer()
                    .frame(height: 60)
                
                PrimaryButton(text: "Next",
                              action: { onboardViewModel.nextButtonTapped() })
                
                Spacer()
                    .frame(height: 10)
                
                SecondaryButton(text: "Skip",
                                action: {})
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    OnboardView()
}




