//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 1.12.2024.
//

import SwiftUI

struct RotatableCircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [
            .pink, .purple, .blue, .orange, .yellow]), center: .center, angle: .zero)
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation(Animation.spring()) {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    RotatableCircleView()
}
