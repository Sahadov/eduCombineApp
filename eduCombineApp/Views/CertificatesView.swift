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
            ForEach(certificateMV.certificates) { certificate in
                Text("1")
                //CertificateCard(certificateVM: $certificateMV, selection: $selection)
            }
        }
        .background(AccountBackground())
        .tabViewStyle(PageTabViewStyle())
    }
}

#Preview {
    CertificatesView()
}
