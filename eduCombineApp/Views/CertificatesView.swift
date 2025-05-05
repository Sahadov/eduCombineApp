//
//  CertificatesView.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 26/04/2025.
//

import SwiftUI

struct CertificatesView: View {
    @StateObject var certificateMV = CertificateViewModel()
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(certificateMV.certificates.indices, id: \.self) { index in
                CertificateCard(selection: $selection)
                    .padding(.horizontal, 8)
                    .environmentObject(certificateMV)
            }
        }
        .background(AccountBackground())
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CertificatesView()
}
