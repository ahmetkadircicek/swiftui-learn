//
//  CheckoutView.swift
//  i_dine
//
//  Created by Ahmet on 17.06.2025.
//

import SwiftUI

struct CheckoutView: View {
    @State private var paymentType = "Cash"
    @State private var isAddLoyaltyDetails = false
    @State private var isShowingPaymentAlert = false
    @State private var loyaltyNumber = ""
    @State private var tipAmount = 15
    @State private var paidAmount = ""
    @EnvironmentObject var order: Order
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    let tipAmounts = [10, 15, 20, 25, 0]
    var totalPrice: String {
        let total = Double(order.total)
        let tipValue = total / 100 * Double(tipAmount)
        return (total + tipValue).formatted(.currency(code: "USD"))
    }
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
                Toggle("Add iDine loyalty card", isOn: $isAddLoyaltyDetails)

                if isAddLoyaltyDetails {
                    TextField("Enter your iDine ID", text: $loyaltyNumber)
                }
            }
            Section("Add a tip?") {
                Picker("Percentage:", selection: $tipAmount) {
                    ForEach(tipAmounts, id: \.self) {
                        Text("\($0)%")
                    }
                }
                .pickerStyle(.segmented)
            }
            Section("Total: \(totalPrice)") {
                Button("Confirm order") {
                    paidAmount = totalPrice
                    order.items.removeAll()
                    isShowingPaymentAlert = true
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
        .alert("Order confirmed", isPresented: $isShowingPaymentAlert) {
            Button("OK", role: .cancel) {}
        } message: {
            Text("Your total was \(paidAmount) – thank you!")
        }
    }
}

#Preview {
    CheckoutView().environmentObject(Order())
}
