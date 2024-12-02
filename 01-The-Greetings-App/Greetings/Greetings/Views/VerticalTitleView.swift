//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 1.12.2024.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
                        
            RotatableCircleView()
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
