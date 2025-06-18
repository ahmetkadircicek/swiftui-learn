//
//  GeneralTextField.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI

struct GeneralTextField: View {
    @Binding var text: String
    @State private var isObscure: Bool = true

    let title: String
    var isSecureEntry: Bool = false
    var placeholder: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(title)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundColor(.gray)

            HStack {
                Group {
                    if isSecureEntry && isObscure {
                        SecureField(placeholder, text: $text)
                            .font(.subheadline)
                    } else {
                        TextField(placeholder, text: $text)
                    }
                }
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .padding(20)

                if isSecureEntry {
                    Button(action: {
                        isObscure.toggle()
                    }) {
                        Image(systemName: isObscure ? "eye.slash" : "eye")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing, 8)
                }
            }
            .frame(height: 60)
            .tint(.pumpkin)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(Color(.secondarySystemBackground))
            )
        }
    }
}
