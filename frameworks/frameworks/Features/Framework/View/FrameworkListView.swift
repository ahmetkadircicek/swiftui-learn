//
//  FrameworkListView.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var frameworkViewModel = FrameworkViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
//                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $frameworkViewModel.isShowingDetailView, isDismissable: false)) {
//                        FrameworkListItem(framework: framework)
//                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkListView()
}
