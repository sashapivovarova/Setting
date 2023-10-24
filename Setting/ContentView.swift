//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var isViewing: Bool = false
    
    var body: some View {
        VStack{
            Text("Sasha")
                .sheet(isPresented: $isViewing) {
                Text("Modal")
                        .onAppear {
                            print("on Appear")
                        }
                        .onDisappear {
                            print("on Disaapear")
                        }
                }
            Button {
                isViewing.toggle()
            } label: {
                Text("Click")
            }
        }  
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
