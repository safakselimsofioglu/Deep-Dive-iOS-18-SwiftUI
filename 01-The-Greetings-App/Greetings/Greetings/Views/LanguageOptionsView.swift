//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 1.12.2024.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Spanish") {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Turkish") {
                    language = "tr"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Arabic") {
                    language = "ar"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
