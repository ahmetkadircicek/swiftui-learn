//
//  FastFoodApp.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI

@main
struct FastFoodApp: App {
    @State private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environment(router)
        }
    }
}
