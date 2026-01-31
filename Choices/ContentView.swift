//  ContentView.swift
//  Choices
//  ©Created by Terrance McHugh on 1/31/26

import SwiftUI

struct ContentView: View {
    
    @State private var message = "Love"
    @State private var imageName = "heart"
    
    var body: some View {
        
        Text("What's So Funny \n'Bout")
            .multilineTextAlignment(.center)
            .foregroundStyle(.purple)
            .font(.largeTitle)
            .fontWeight(.black)
            .padding(.horizontal, 20)
        
        Spacer()
        
        VStack(spacing: 24) {
            Image(systemName: imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
                .foregroundStyle(.purple)
                //.border(.cyan)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
        }
        
        Spacer()
        
        HStack(spacing: 18) {
            Button("Peace") {
                message = "Peace"
                imageName = "peacesign"
            }
            
            Button("Love") {
                message = "Love"
                imageName = "heart"
            }
            
            Button("Understanding") {
                message = "Understanding"
                imageName = "lightbulb"
            }
        }
        .buttonStyle(.borderedProminent)
        .font(.title2)
        .tint(.purple)
        .padding(.bottom, 18)
    }
}

#Preview {
    ContentView()
}
