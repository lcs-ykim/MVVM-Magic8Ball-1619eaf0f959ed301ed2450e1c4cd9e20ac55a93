//
//  MVVM_Magic8BallApp.swift
//  watchOS WatchKit Extension
//
//  Created by Russell Gordon on 2021-09-19.
//

import SwiftUI

@main
struct MVVM_Magic8BallApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle")
                    Text("Ask")
                }
                
                NavigationView {
                    SwiftUIView()
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("History")
                }

            }
            
        }
    }
}
