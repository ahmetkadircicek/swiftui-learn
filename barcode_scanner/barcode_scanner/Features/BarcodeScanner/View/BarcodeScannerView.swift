//
//  ContentView.swift
//  barcode_scanner
//
//  Created by Ahmet on 16.06.2025.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var barcodeScannerViewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $barcodeScannerViewModel.scannedCode, alertItem: $barcodeScannerViewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer()
                    .frame(height: 50)
                
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(barcodeScannerViewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(barcodeScannerViewModel.statusTextColor)
                    .padding(.all)
                
                Spacer()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $barcodeScannerViewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
//            .alert(isPresented: $isShowingAlert, content: {
//                Alert(title: Text("Test"), message: Text("This is a test"), dismissButton: .default(Text("OK")))
//            })
        }
    }
}

#Preview {
    BarcodeScannerView()
}
