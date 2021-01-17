//
//  TrekrApp.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/9/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {

        WindowGroup {
            TabView {
               
                NavigationView{
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane")
                }
                
                NavigationView{
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star")
                }
                NavigationView{
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                }
            }.environmentObject(locations)
        }
    }
}
