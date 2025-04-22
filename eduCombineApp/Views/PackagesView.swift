//
//  PackagesView.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct PackagesView: View {
    var body: some View {
        ZStack(alignment: .top) {
            content
        }
        .frame(maxHeight: .infinity, alignment: .top)
        .navigationTitle("SwiftUI Packages")
        .background(Color("Background 2"))
    }
    
    var content: some View {
            VStack(alignment: .leading, spacing: 16.0) {
                Text("This app was 100% made using SwiftUI. We’d like to thank these amazing Swift Packages for making our lives as creators easier.")
                    .font(.subheadline)
                    .opacity(0.7)
                    .frame(maxWidth: .infinity, alignment:. leading)
                    .fixedSize(horizontal: false, vertical: true)
                
                ForEach(packagesData, id: \.id) { package in
                    PackageRow(package: package)
                }
            }
            .padding(.horizontal, 20)
        }
}

#Preview {
    PackagesView()
}
