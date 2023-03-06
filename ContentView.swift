//
//  ContentView.swift
//  Messenger Angime
//
//  Created by Shynggys Umbetov on 05/03/2023.
//

import SwiftUI

struct ContentView: View {
    var messageArray = ["Hello", "How are you doing ?", "I've been building SwiftUI app"]
    
    var body: some View {
        VStack {
            TitleRow()
            
            ScrollView{
                ForEach(messageArray, id: \.self) { text in
                    MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top, 10)
            .background(.white)
        }
        .background(Color("Peach"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
