//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(value: 3) {
                Text("test 3")
            }.navigationDestination(for: Int.self) { value in
                Text("Sasha tried \(value) times")
            }.navigationTitle("Hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
