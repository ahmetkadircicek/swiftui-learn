//
//  AlertContext.swift
//  barcode_scanner
//
//  Created by Ahmet on 17.06.2025.
//


import SwiftUI

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something is wrong with the camera",
                                              dismissButton: .default(Text("OK")))
    
    static let invalidScannedType = AlertItem(title: "Invalid Scanned Type",
                                              message: "The value is not valid.",
                                              dismissButton: .default(Text("OK")))
}