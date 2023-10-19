//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

func returnName() -> String {
    return "sasha"
} // function

struct ContentView: View {
    
    var body: some View {
        VStack{
            Text(returnName())
            Text(returnName2())
        }
    }
    
    func returnName2() -> String {
        return "sasha"
    } //method
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
