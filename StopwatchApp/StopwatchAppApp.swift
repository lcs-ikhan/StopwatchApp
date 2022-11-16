//
//  StopwatchAppApp.swift
//  StopwatchApp
//
//  Created by Isaad Khan on 2022-11-15.
//

import SwiftUI

@main
struct StopwatchAppApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                
                Text("World Clock")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("World Clock")
                    }
                Text("Alarm")
                    .tabItem {
                        Image(systemName: "alarm.fill")
                        Text("Alarm")
                    }
                
                ContentView()
                    .tabItem {
                        Image(systemName: "stopwatch.fill")
                        Text("Stopwatch")
                    }
                
                Text("Timer")
                    .tabItem {
                        Image(systemName: "timer")
                        Text("Timer")
                    }
            }
            
        }
    }
}
