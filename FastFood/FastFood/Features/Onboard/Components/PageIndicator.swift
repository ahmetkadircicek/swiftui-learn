//
//  CustomPageIndicator.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//


import SwiftUI

struct PageIndicator: View {
    let numberOfPages: Int
        let currentPage: Int

        var body: some View {
            HStack(spacing: 12) {
                ForEach(0..<numberOfPages, id: \.self) { index in
                    Circle()
                        .fill(index == currentPage ? Color.orange : Color.orange.opacity(0.3))
                        .frame(width: index == currentPage ? 12 : 8, height: index == currentPage ? 12 : 8)
                        .animation(.easeInOut, value: currentPage)
                }
            }
        }
}

#Preview {
    PageIndicator(numberOfPages: 4, currentPage: 0)
}
