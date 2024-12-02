//
//  GreetingsView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 30.11.2024.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
