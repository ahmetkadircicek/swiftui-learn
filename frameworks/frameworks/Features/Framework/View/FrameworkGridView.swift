//
//  FrameworkGridView.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//

import SwiftUI

struct FrameworkGridView: View {
 
    @StateObject var frameworkViewModel = FrameworkViewModel()
    @Namespace var animationNamespace
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: frameworkViewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkGridItem(framework: framework)
//                                .onTapGesture {
//                                    frameworkViewModel.selectedFramework = framework
//                                }
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: FrameworkModel.self) { framework in
                FrameworkDetailView(framework: framework)
            }
//            .sheet(isPresented: $frameworkViewModel.isShowingDetailView) {
//                FrameworkDetailView(
//                    framework: frameworkViewModel.selectedFramework!,
//                    isShowingDetailView: $frameworkViewModel.isShowingDetailView,
//                    isDismissable: true
//                )
//            }
        }
    }
}

#Preview {
    FrameworkGridView()
}



