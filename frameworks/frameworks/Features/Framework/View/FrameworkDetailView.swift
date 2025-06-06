//
//  FrameworkDetailView.swift
//  frameworks
//
//  Created by Ahmet on 15.06.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: FrameworkModel
//    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    var isDismissable: Bool?
    
    var body: some View {
        VStack {
//            if isDismissable == true {
//                DismissButton(isShowingDetailView: $isShowingDetailView)
//            }
            
            
            FrameworkGridItem(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                Text("Learn More")
//                    .font(.title2)
//                    .fontWeight(.semibold)
//                    .frame(width: 280, height: 50)
//                    .background(.red)
//                    .foregroundStyle(.white)
//                    .cornerRadius(8)
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework
                        /*isShowingDetailView: .constant(false)*/)
}
