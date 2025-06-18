//
//  OnboardTabView.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//


import SwiftUI

struct OnboardTabView: View {
    @StateObject var onboardViewModel: OnboardViewModel
    
    var body: some View {
        TabView(selection: $onboardViewModel.selectedIndex) {
            ForEach(OnboardItems.onboardItems.indices, id: \.self) { index in
                OnboardTabItem(onboardModel: OnboardItems.onboardItems[index])
                    .tag(index)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .disabled(true)
    }
}
