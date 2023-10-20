//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var inHome: Bool = true
    
    var body: some View {
        VStack{
            Toggle(isOn: $inHome) {
                if inHome {
                    Text("I'm home.")
                } else {
                    Text("I'm out.")
                }
            }
            .padding()
            .toggleStyle(.switch)
            .tint(.black)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
