//
//  FAQView.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct FAQView: View {
    var body: some View {
        ZStack(alignment: .top) {
                content
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .navigationTitle("FAQ").font(.largeTitle)
                .background(Color("Background 2").edgesIgnoringSafeArea(.all))
    }
    
    var content: some View {
            VStack(alignment: .leading, spacing: 16.0) {
                ForEach(faqData, id: \.id) { faq in
                    FAQRow(faq: faq)
                }
                .padding(.bottom, 16)
                
                Text("Have any question?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.subheadline)
                    .opacity(0.7)
                
                Link(destination: URL(string: "mailto:support@designcode.io")!, label: {
                    PrimaryButton().padding(.top, 16)
                })
            }
            .padding(.horizontal, 20)
        }
}

#Preview {
    FAQView()
}
