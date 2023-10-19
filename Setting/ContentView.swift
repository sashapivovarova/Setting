//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    let myFirstClosure: () -> Void = { print("Closure") }
    
    func myFirstFunction() -> Void {
        print("Function")
    }
    
    var body: some View {
        VStack {
            Button (action: myFirstClosure) {
                Text("Clousure")
            }
            Button { myFirstFunction()}label: {
                Text("Function")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
