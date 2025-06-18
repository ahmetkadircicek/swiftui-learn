//
//  OnboardModel.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import Foundation

struct OnboardModel: Hashable, Identifiable {
    let id = UUID()
    let imageName: String?
    let title: String
    let subtitle: String
}


struct OnboardItems {
    static let mockData = OnboardModel(imageName: "onboard_2",
                                       title: "Lorem Ipsum Dolor Sit Amed",
                                       subtitle: "Consectetur Adipiscing, Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet.")
    static let onboardItems = [
        OnboardModel(imageName: nil,
                     title: "All Your Favorites",
                     subtitle: "Discover and enjoy your favorite dishes all in one place. Just place your order — we’ll handle the rest."),
        
        OnboardModel(imageName: nil,
                     title: "Order from Top Chefs",
                     subtitle: "Choose meals prepared by talented chefs and delivered fresh to your door."),
        
        OnboardModel(imageName: nil,
                     title: "Fast & Free Delivery",
                     subtitle: "Experience quick, contactless delivery with no extra fees."),
        
        OnboardModel(imageName: nil,
                     title: "Reliable Delivery",
                     subtitle: "Your meals arrive on time, every time — fresh and safely.")
    ]
}
