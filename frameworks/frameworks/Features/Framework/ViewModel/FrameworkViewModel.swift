//
//  FrameworkGridViewModel.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
//    var selectedFramework: FrameworkModel? {
//        didSet { isShowingDetailView = true }
//    }
//    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
