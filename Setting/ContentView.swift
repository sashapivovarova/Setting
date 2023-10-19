//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    var name: String? = "sasha"
    var nickName: String?
    var mail: String? = "abc@def.com"
    
    var body: some View {
        VStack{
            Text(name!)
            
            Text(nickName ?? "james")
            
            if let mail = mail {
                Text(mail)
            } else {
                Text("Error")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
