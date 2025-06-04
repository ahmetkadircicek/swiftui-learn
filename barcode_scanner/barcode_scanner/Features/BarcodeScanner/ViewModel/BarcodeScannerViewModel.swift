//
//  BarcodeScannerViewModel.swift
//  barcode_scanner
//
//  Created by Ahmet on 17.06.2025.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        return scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red: .green
    }
}

