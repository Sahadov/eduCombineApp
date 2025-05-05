//
//  NotificationRow.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 05/05/2025.
//

import SwiftUI

struct NotificationRow: View {
    @State private var subsribed: Bool = true

    var body: some View {
        Toggle(isOn: $subsribed, label: {
            HStack(spacing: 12) {
                GradientIcon(icon: "bell.fill")
                
                VStack(alignment: .leading) {
                    Text("Notify me of new content")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Max once a week")
                        .font(.caption2)
                        .opacity(0.7)
                }
            }
        })
        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.3450980392, green: 0.337254902, blue: 0.8392156863, alpha: 1))))
    }
}

#Preview {
    NotificationRow()
}
