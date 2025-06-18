//
//  LoginView.swift
//  FastFood
//
//  Created by Ahmet on 18.06.2025.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack {
            BackgroundComponent()
            VStack {
                VStack {
                    TitleComponent()
                    SubtitleComponent()
                }
                .padding(.top)
                .frame(height: 200)
                
                LoginFormComponent()
            }
            .ignoresSafeArea(.container, edges: .bottom)
        }
        
    }
}

struct BackgroundComponent: View {
    var body: some View {
        Rectangle()
            .foregroundStyle(.vulcan)
            .ignoresSafeArea()
    }
}

struct TitleComponent: View {
    var body: some View {
        Text("Log In")
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(.white)
    }
}

struct SubtitleComponent: View {
    var body: some View {
        Text("Please sign in to your existing account")
            .font(.subheadline)
            .foregroundStyle(.blackSqueeze)
    }
}

#Preview {
    LoginView()
}
