//
//  DismissButton.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//

import SwiftUI

struct DismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.foreground)
                    .imageScale(.large)
                    .frame(width: 50, height: 50)
            }
        }
        .padding()
    }
}
