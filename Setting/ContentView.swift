//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("userID : \(userName)")
            TextField("Enter your ID", text: $userName)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
