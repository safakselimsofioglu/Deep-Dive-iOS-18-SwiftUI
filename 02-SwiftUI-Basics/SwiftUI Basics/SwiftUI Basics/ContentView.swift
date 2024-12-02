//
//  ContentView.swift
//  SwiftUI Basics
//
//  Created by Şafak Selim Sofioğlu on 2.12.2024.
//

import SwiftUI

struct ContentView: View {
    let colorList1: [Color] = [.white, .blue, .red, .purple]
    let colorList2: [Color] = [.black, .white, .blue]
    
    @State private var screenTapped: Bool = false
    let rotationAngle: CGFloat = 360.0
    
    // Computed property
    var colors: [Color] {
        screenTapped ? colorList1 : colorList2
    }
    
    var text: String {
        screenTapped ? "SwiftUI Basics" : "To know what you know and what you do not know, that is true knowledge"
    }
    
    var font: Font {
        screenTapped ? .largeTitle : .title
    }
    
    var body: some View {
        ZStack {
            LinearGradient(colors: colors, startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.8)
                .ignoresSafeArea()
            
            VStack {
                Text(text)
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundStyle(.red)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(maxHeight: .infinity)
                
                
                Text("Another line of text")
                    .font(font)
                    .fontWeight(.semibold)
                    .foregroundStyle(screenTapped ? .blue : .indigo)
                    .multilineTextAlignment(.center)
                    .frame(maxHeight: .infinity)
                
            }
//            .padding(.horizontal)
            .rotation3DEffect(.degrees(screenTapped ? 0 : rotationAngle), axis: (x: 1, y: 1, z: 1))
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 1.2)) {
                screenTapped.toggle()
            }
        }
    }
}

#Preview {
    ContentView()
}
