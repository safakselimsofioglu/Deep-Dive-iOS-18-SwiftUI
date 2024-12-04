//
//  ContentView.swift
//  Navigation Example
//
//  Created by Şafak Selim Sofioğlu on 3.12.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var age: String = ""
    
    var disableNavigationLink: Bool {
        name.count <= 1 || age.isEmpty
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack(alignment: .leading) {
                    Text("Enter your name")
                    TextField("Name", text: $name)
                }
                
                VStack(alignment: .leading) {
                    Text("Enter your age")
                    TextField("Age", text: $age)
                        .keyboardType(.numberPad)
                }
                
                
                Spacer()
                
                NavigationLink {
                    ZStack {
                        Color
                            .orange
                            .opacity(0.3)
                            .ignoresSafeArea()
                        Text("Orange View")
                    }
                } label: {
                    Text("Orange View")
                        .font(.title)
                        .padding()
                        .overlay {   
                            Capsule()
                                .stroke()
                        }
                }
                
                NavigationLink {
                    DrinkingView(name: name, age: age)
                } label: {
                    Text("Okay")
                        .font(.title)
                        .padding()
                        .overlay {
                            Capsule()
                                .stroke()
                        }
                }
                .disabled(disableNavigationLink)

            }
            .padding()
            .navigationTitle("Navigation Example")
        }
    }
}



#Preview {
    ContentView()
}
