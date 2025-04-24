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
                content
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .background(AccountBackground())
        }
        .toolbar(.hidden)
    }
    
    var content: some View {
        VStack {
            ProfileRow()
                .padding(.horizontal, 20)
            
            VStack {
                NavigationLink(destination: FAQView()) {
                    MenuRow()
                }
                divider
                NavigationLink(destination: PackagesView()){
                    MenuRow(title: "SwiftUI Packages", leftIcon: "square.stack.3d.up.fill")
                }
                
                divider
                Link(destination: URL(string: "https://www.youtube.com")!) {
                    MenuRow(title: "YouTube Channel", leftIcon: "play.rectangle.fill", rightIcon: "link")
                }
            }
            .blurBackground()
            .padding(.top, 20)
            .padding(.horizontal, 20)
            .padding(.bottom, 10)
            
            Text("Version 1.00")
                .foregroundStyle(.white.opacity(0.7))
                .padding(.top, 20)
                .padding(.horizontal, 20)
                .padding(.bottom, 10)
                .font(.footnote)
            
        }
    }
    
    var divider: some View {
        Divider().background(Color.white.blendMode(.overlay))
    }
}

#Preview {
    ContentView()
}
