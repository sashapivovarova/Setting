//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var won: Int = 1000
    var yen: Int {
        get {
            return won/10
        }
    }
    var body: some View {
        VStack{
            if won == 1000 {
                Text("Reiwa")
            } else {
                Text("Syouwa")
            }
            Text("won is \(won.description)")
            Text("yen is \(yen.description)")
            
            Button {
                if won == 1000 {
                    won = 200
                } else {
                    won = 1000
                }
            } label: {
                if won == 1000 {
                    Text("won become to 200")
                } else {
                    Text("won become to 1000")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
