//
//  ContentView.swift
//  Swift Slots
//
//  Created by Alex Cannizzo on 21/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var credits = 1000
    @State private var image1 = 0
    @State private var image2 = 1
    @State private var image3 = 2
    var images = ["apple", "cherry", "star"]
    
    
    var body: some View {
        
        VStack {
            Text("Swift Slots!")
                .padding()
                .font(.system(size: 40))
            Spacer()
            Text("Credits: " + String(credits))
            Spacer()
            HStack {
                Image(images[image1])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(images[image2])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(images[image3])
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            Spacer()
            Button {
                let randomImg1 = Int.random(in: 0..<3)
                let randomImg2 = Int.random(in: 0..<3)
                let randomImg3 = Int.random(in: 0..<3)
                
                image1 = randomImg1
                image2 = randomImg2
                image3 = randomImg3
                
                if image1 == image2 && image1 == image3 {
                    credits = 1000
                } else {
                    credits -= 25
                }
                
            } label: {
                Text("Spin")
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .padding()
                    .frame(width: 120, height: 40)
                    .background(Color.red)
                    .cornerRadius(20)
            }
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
