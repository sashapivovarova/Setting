//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            Text("Tab Content 1").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 1");/*@END_MENU_TOKEN@*/ Image(systemName: "house.fill") }.tag(1)
            Text("Tab Content 2").tabItem { /*@START_MENU_TOKEN@*/Text("Tab Label 2")/*@END_MENU_TOKEN@*/; Image(systemName: "bolt.fill") }.tag(2)
            Text("Tab Content 3").tabItem { Text("Tab Label 3"); Image(systemName: "heart.fill") }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
