//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct UserInfo {
    let name: String
    let age: Int?
    
    func sayMyName(with name: String) {
        print(name)
    }
}

struct ContentView: View {
    let userInfo: UserInfo
    
//    let name: String
//    let age: Int?
    
    var body: some View {
        VStack {
//            Text(name)
//            Text(age?.description ?? "100")
            
            Text(userInfo.name)
            Text(userInfo.age?.description ?? "100")
            
            Button {
//                sayMyName(with: name)
                userInfo.sayMyName(with: userInfo.name)
            } label: {
                Text("Button")
            }
        }
    }
    
//    func sayMyName(with name: String) {
//        print(name)
//    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView(name: "sasha", age: 200)
        
        let sasha = UserInfo(name: "sasha", age: 200)
        ContentView(userInfo: sasha)
    }
}
