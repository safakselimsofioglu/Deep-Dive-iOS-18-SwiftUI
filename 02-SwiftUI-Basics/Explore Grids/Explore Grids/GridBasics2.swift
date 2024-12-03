//
//  GridBasics2.swift
//  Explore Grids
//
//  Created by Şafak Selim Sofioğlu on 3.12.2024.
//

import SwiftUI

struct GridBasics2: View {
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .edgesIgnoringSafeArea(.all)
            
            Grid {
                GridRow {
                    
                }
            }
        }
    }
}

struct Rect: View {
    let color: Color
    let count: Int
    let total: Int
    
    var text: String {
        "\(count) out of \(total)"
    }
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(color.opacity(0.5))
            .overlay {
                Text(text)
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            .gridCellColumns(count)
    }
}

#Preview {
    GridBasics2()
}
