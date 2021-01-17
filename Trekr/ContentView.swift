//
//  ContentView.swift
//  Trekr
//
//  Created by Abdihakin Elmi on 1/9/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        VStack {
            Image(location.heroPicture)
                .scaledToFit()
                .cornerRadius(30)
            ScrollView{
                Text(location.name)
                .font(.title)
                .bold()
                Text(location.country)
                .foregroundColor(.secondary)
           Divider()
                Text(location.description).padding(.horizontal)
                Text("Did You Know?").bold().font(.title3).padding(.top)
                Text(location.more).padding(.horizontal)
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
