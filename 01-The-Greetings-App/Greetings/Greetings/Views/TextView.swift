//
//  TextView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

/// This is the text view in the app whose colors can change randomly
/// after being tapped.
struct TextView: View {
    
    let text: LocalizedStringKey
    @State var color: Color
    
    let colors: [Color] = [
        Color(red: 173/255, green: 216/255, blue: 230/255),  // Soft Light Blue
        Color(red: 144/255, green: 238/255, blue: 144/255),  // Soft Light Green
        Color(red: 255/255, green: 182/255, blue: 193/255),  // Soft Light Pink
        Color(red: 230/255, green: 230/255, blue: 250/255),  // Soft Lavender
        Color(red: 255/255, green: 255/255, blue: 204/255),  // Soft Light Yellow
        Color(red: 221/255, green: 160/255, blue: 221/255),  // Soft Lavender Purple
        Color(red: 255/255, green: 160/255, blue: 122/255),  // Soft Light Orange
        Color(red: 189/255, green: 252/255, blue: 201/255),  // Soft Mint Green
        Color(red: 255/255, green: 239/255, blue: 213/255),  // Soft Peach
        Color(red: 255/255, green: 240/255, blue: 245/255),  // Soft Baby Pink
        Color(red: 224/255, green: 255/255, blue: 255/255),  // Soft Ice Blue
        Color(red: 240/255, green: 255/255, blue: 240/255),  // Soft Honeydew
        Color(red: 250/255, green: 250/255, blue: 210/255)   // Soft Light Gold
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIPad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .clipShape(.rect(cornerRadius: 20.0))
            .shadow(color: color, radius: 5, x: 10, y: 10)
            .onTapGesture {
                color = colors.randomElement() ?? .red
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus!", color: .blue)
        TextView(text: "Peace!", color: .purple)
    }
}
