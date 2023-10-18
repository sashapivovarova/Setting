//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    let name: String = "sasha"
    let province: String? = "Newyork"
    let age: Int? = 10
    
    var body: some View {
        VStack {
            Text(name)
            Text(province ?? "Ohio")
            Text(age?.description ?? "100")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
