//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "heart.fill")
            Divider()
                .background(.red)
                .frame(height: 30)
            Text("World")
            HStack{
                Image(systemName: "heart.fill")
                Divider()
                    .background(.red)
                    .frame(width: 30)
                Text("World")
            }
            Image(systemName: "heart.fill")
            Divider()
                .background(.red)
                .frame(height: 30)
            Text("World")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
