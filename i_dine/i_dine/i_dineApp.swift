//
//  i_dineApp.swift
//  i_dine
//
//  Created by Ahmet on 17.06.2025.
//

import SwiftUI

@main
struct i_dineApp: App {
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order)
        }
    }
}
