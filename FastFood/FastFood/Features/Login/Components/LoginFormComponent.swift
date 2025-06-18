//
//  BottomCardComponent.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//


import SwiftUI

struct LoginFormComponent: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe = false
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .foregroundStyle(.white)
                .cornerRadius(24)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    GeneralTextField(
                        text: $email,
                        title: "EMAIL",
                        isSecureEntry: false,
                        placeholder: "example@email.com"
                    )
                    
                    GeneralTextField(
                        text: $password,
                        title: "PASSWORD",
                        isSecureEntry: true,
                        placeholder: "* * * * * * * *"
                    )
                    
                    LoginExtraComponents(isRememberMeChecked: $rememberMe)
                    
                    PrimaryButton(text: "LOG IN",
                                  action: { print("Log in button tapped")})
                    
                    RegisterButton()
                    
                    Text("OR")
                        .font(.subheadline)
                        .foregroundStyle(.gullGray)
                        .bold()
                        .frame(maxWidth: .infinity)
                    
                    OAuthOptions()
                }
                .padding(20)
            }
        }
    }
}

struct LoginExtraComponents: View {
    @Binding var isRememberMeChecked: Bool
    
    var body: some View {
        HStack {
            Button(action: {
                isRememberMeChecked.toggle()
            }) {
                Label {
                    Text("Remember Me")
                        .foregroundColor(.gullGray)
                } icon: {
                    Image(systemName: isRememberMeChecked ? "checkmark.square.fill" : "square")
                        .foregroundColor(isRememberMeChecked ? .pumpkin : .gullGray)
                }
                .font(.body)
                .labelStyle(.titleAndIcon)
            }
            
            Spacer()
            
            Button(action: {
                print("Forgot Password tapped")
            }) {
                Text("Forgot Password?")
                    .font(.body)
                    .foregroundColor(.pumpkin)
            }
        }
        .padding(.vertical)
    }
}

#Preview {
    LoginFormComponent()
}

struct RegisterButton: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("Don't have an account?")
            Button(action: {
            }) {
                Text("Create an Account")
                    .font(.body)
                    .bold()
                    .foregroundColor(.pumpkin)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical)
    }
}

import SwiftUI

struct SocialCircleButton: View {
    let systemIconName: String
    let backgroundColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Image(systemName: systemIconName)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundColor(.white)
                .padding(20)
                .background(backgroundColor)
                .clipShape(Circle())
        }
    }
}

struct OAuthOptions: View {
    var body: some View {
        HStack(alignment: .center, spacing: 30) {
            SocialCircleButton(systemIconName: "f.circle.fill",
                               backgroundColor: .blue,
                               action: { print("X tapped") })
            
            SocialCircleButton(systemIconName: "xmark.circle.fill",
                               backgroundColor: .black,
                               action: { print("X tapped") })
            
            
            SocialCircleButton(systemIconName: "apple.logo",
                               backgroundColor: .gray,
                               action: { print("Apple tapped") })
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
}
