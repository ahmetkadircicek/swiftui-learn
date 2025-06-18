//
//  ButtonText.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//


import SwiftUI

struct PrimaryButton: View {
    var text: String
    var action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(text)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, minHeight: 60)
                .background(Color.pumpkin)
                .cornerRadius(12)
        }
    }
}



#Preview {
    PrimaryButton(text: "Primary", action: {})
}
