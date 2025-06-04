//
//  AlertItem.swift
//  barcode_scanner
//
//  Created by Ahmet on 17.06.2025.
//


import SwiftUI

struct AlertItem: Identifiable{
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}