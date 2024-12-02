//
//  MessagesView.swift
//  Greetings
//
//  Created by Şafak Selim Sofioğlu on 29.11.2024.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        //DataItemModel(text: "Hello there!",color: .green)
        .init(text: "Hello there!", color: .myGreen),
        .init(text: "Welcome to Swift Programming",color: .myGray),
        .init(text: "Are you ready to,",color: .myYellow),
        .init(text: "start exploring?",color: .myRed),
        .init(text: "Boom!",color: .myPurple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { dataItem in
                TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
