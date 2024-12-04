//
//  ProcessView.swift
//  Navigation Example
//
//  Created by Şafak Selim Sofioğlu on 3.12.2024.
//

import SwiftUI

struct DrinkingView: View {
    let name: String
    let age: String
    let drinkingAge: Int
    
    init(name: String, age: String, drinkingAge: Int = 18) {
        self.name = name
        self.age = age
        self.drinkingAge = drinkingAge
    }
    
    var numericalAge: Int? {
        Int(age)
    }
    
    var text: String {
        if let numericalAge {
            if numericalAge > drinkingAge {
                return "Welcome \(name.capitalized)!\nYou can drink responsibly."
            } else {
                return "Sorry \(name.capitalized), we can't serve you."
            }
        } else {
            return #"The value "\#(age)" is invalid!"#
        }
    }
    
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            Text(text)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
        }
    }
}

#Preview {
    DrinkingView(name: "", age: "20")
}
