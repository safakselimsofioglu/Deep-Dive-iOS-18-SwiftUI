//
//  ContentView.swift
//  Explore Grids
//
//  Created by Şafak Selim Sofioğlu on 3.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            Grid {
                GridRow {
                    Rect(color: .red, count: 2, total: 3)
                    Rect(color: .yellow, count: 1, total: 3)
                }
                GridRow {
                    Rect(color: .red, count: 1, total: 3)
                    Rect(color: .blue, count: 1, total: 3)
                    Rect(color: .yellow, count: 1, total: 3)
                }
                GridRow {
                    Rect(color: .red, count: 1, total: 4)
                    Rect(color: .blue, count: 2, total: 4)
                    Rect(color: .yellow, count: 1, total: 4)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
