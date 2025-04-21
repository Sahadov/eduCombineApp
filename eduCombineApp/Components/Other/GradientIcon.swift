//
//  GradientIcon.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 21/04/2025.
//

import SwiftUI

struct GradientIcon: View {
    var icon: String = "questionmark"
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .mask(Image(systemName: icon).font(.system(size: 17)))
            .background(Color.black)
            .frame(width: 36, height: 36)
            .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .overlay(RoundedRectangle(cornerRadius: 12, style: .continuous).stroke(lineWidth: 1).foregroundStyle(.white).blendMode(.overlay))
    }
}

#Preview {
    GradientIcon()
}
