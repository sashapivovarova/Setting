//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct PersonStruct {
    var name: String
    let age: Int
}

class PersonClass {
    var name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct ContentView: View {
    
    
    var sashaCla = PersonClass(name: "sasha", age: 2)
    @State var nickName: String = "None"
    @State var nickName2: String = "None"
    
   var body: some View {
       VStack {
           
           Text(nickName)
           Text(nickName2)
           
           Button {
               var sashaStr = PersonStruct(name: "sasha", age: 2)
               var fakeSashaStr = sashaStr
               sashaStr.name = "sasha2"
               fakeSashaStr.name = "sasha3"
               nickName = sashaStr.name
               // sasha2 が表示される
           }label: {
                Text("Hit")
           }
           
           Button {
               var sashaCla = PersonClass(name: "sasha", age: 2)
               var fakeSashaCla = sashaCla
               sashaCla.name = "sasha2"
               fakeSashaCla.name = "sasha3"
               nickName2 = sashaCla.name
               // sasha3 が表示される
           }label: {
                Text("Hit")
           }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
