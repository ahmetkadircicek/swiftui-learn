//
//  SecondaryButton.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//


import SwiftUI

struct SecondaryButton: View {
    var text: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.stormGray)
                .frame(maxWidth: .infinity, maxHeight: 60)
        }
    }
}

#Preview {
    SecondaryButton(text: "Secondary", action: {})
}
