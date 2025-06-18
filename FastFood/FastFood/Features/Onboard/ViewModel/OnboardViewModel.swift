//
//  OnboardViewModel.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//
import SwiftUI

final class OnboardViewModel: ObservableObject {
    @Published var selectedIndex = 0
    
    func nextButtonTapped() {
        if selectedIndex < OnboardItems.onboardItems.count - 1 {
            selectedIndex += 1
        }
    }
}
