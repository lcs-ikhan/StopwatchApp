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
                
                Spacer()
                
               Text("00:09.96")
                    .font(Font.system(size:90, weight: .thin))
                    .foregroundColor(.white)
                
                // Create a circular button
                HStack {
                    CircleButtonView(buttonColor: Color("Dark grey"),
                                     label: "Reset",
                                     labelColor: .white)
                    
                    Spacer()
                    
                    Circle()
                        .foregroundColor(.white)
                        .frame(width: 10)
                    
                    Circle()
                        .foregroundColor(.gray)
                        .frame(width: 10)
                        
                    Spacer()
                    
                    CircleButtonView(buttonColor: Color("Dark green"),
                                     label: "Start",
                                     labelColor: .green)
                    
                }
                // List of times
                List {
                    
                    Group{
                        ListView(labelColor: .white, label1: "Lap 5", label2: "00:00.98")
                        ListView(labelColor: .red, label1: "Lap 4", label2: "00:04.08")
                        ListView(labelColor: .green, label1: "Lap 3", label2: "00:00.96")
                        ListView(labelColor: .white, label1: "Lap 2", label2: "00:02.76")
                        ListView(labelColor: .white, label1: "Lap 1", label2: "00:01.16")
                        
                    }
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                }
                // Sets the amount of vertical height we want this list to take up
                .frame(height: 300)
                // Adjust list style to match design
                .listStyle(.plain)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(3)){
            
            Text("World Clock")
                .tabItem {
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem {
                    Image(systemName: "alarm.fill")
                    Text("Alarm")
                }
                .tag(2)
            
            ContentView()
                .tabItem {
                    Image(systemName: "stopwatch.fill")
                    Text("Stopwatch")
                }
                .tag(3)
            
            Text("Timer")
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
            
        }
        // Change the accent color for the currently active tab item
        .accentColor(.orange)
        // Ensure tab items that are not active remain visible
        .preferredColorScheme(.dark)
    }
}

