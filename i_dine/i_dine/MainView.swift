//
//  MainView.swift
//  i_dine
//
//  Created by Ahmet on 17.06.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }

            OrderView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

#Preview {
    MainView().environmentObject(Order())
}
