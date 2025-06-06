//
//  FrameworkView.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct FrameworkListItem: View {
    let framework: FrameworkModel
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        .padding(.vertical)
    }
}
