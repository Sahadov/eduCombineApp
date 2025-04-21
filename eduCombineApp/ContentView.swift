//
//  ContentView.swift
//  eduCombineApp
//
//  Created by Dmitry Volkov on 20/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                Text("Hello, world!")
                    .padding()
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
        }
        .toolbar(.hidden)
    }
}

#Preview {
    ContentView()
}
