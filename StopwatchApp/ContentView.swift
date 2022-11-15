//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Isaad Khan on 2022-11-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            // First layer (background)
            Color.black
                .ignoresSafeArea()
            
            // Second layer (rest of interface)
            VStack {
               Text("00:09.96")
                    .font(Font.system(size:90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circulat button
                ZStack {
                    
                    // First layer
                    Circle()
                        .foregroundColor(.gray)
                    .frame(width: 100)
                    
                    // Second layer
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 93)
                    
                    //Third layer
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 89)
                    
                    // Fourth layer
                    Text("Reset")
                        .foregroundColor(.white)
                        .font(.title2)
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
