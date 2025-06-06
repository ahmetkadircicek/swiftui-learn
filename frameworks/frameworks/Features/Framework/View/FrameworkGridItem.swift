//
//  FrameworkView.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//


import SwiftUI

struct FrameworkGridItem: View {
    let framework: FrameworkModel
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
