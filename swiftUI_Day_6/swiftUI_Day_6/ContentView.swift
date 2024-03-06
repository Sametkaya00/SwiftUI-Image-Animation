//
//  ContentView.swift
//  swiftUI_Day_6
//
//  Created by samet kaya on 6.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var moveRight = false
    
    var body: some View {
        VStack {
            Image("SwiftUI")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .cornerRadius(8)
                .opacity(0.8)
                .cornerRadius(40)
                .overlay(RoundedRectangle(cornerRadius: 40).stroke(Color.blue, lineWidth: 10))
                .shadow(color: .blue, radius: 15)
                .rotationEffect(.degrees(moveRight ? 10 : -10))
                .onAppear{
                    withAnimation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true)) {
                        moveRight.toggle()
                    }
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
