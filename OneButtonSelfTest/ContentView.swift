//
//  ContentView.swift
//  OneButtonSelfTest
//
//  Created by Jake Emitte on 6/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var image = ""
    @State private var imageNumber = 0
    @State private var message = ""
    @State private var messageNumber = 0
    var body: some View {
        
        VStack {
            Spacer()
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25))
                .shadow(radius: 25)
            Spacer()
            Text(message)
                .font(.largeTitle)
                .foregroundColor(.mint)
            
            Spacer()
            Button("Press Me!") {
                
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
                image = "image\(imageNumber)"
                
                let messages = ["You are Awesome!",
                                "You Are Great!",
                                "You are Dumb!",
                                "You Hate Arrays!"]
                
                messageNumber += 1
                if messageNumber > 3 {
                    messageNumber = 0
                }
                
                message = messages[messageNumber]
                
                
            }
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .tint(.orange)
            
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
