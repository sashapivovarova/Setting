//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingScreen: Bool = false
    
    var body: some View {
        VStack{
            Button {
                isShowingScreen = true
            }label: {
                Text("Call full screen")
            }
            .fullScreenCover(isPresented: $isShowingScreen) {
                ZStack{
                    Color.orange.ignoresSafeArea()
                    VStack{
                        Text("Full screen")
                        Button {
                            isShowingScreen = false
                        }label: {
                            Text("Back")
                        }
                    }
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
