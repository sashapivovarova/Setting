//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowingModal: Bool = false
    
    var body: some View {
        VStack{
            Button {
                isShowingModal = true
            }label: {
                Text("Call modal")
            }
            .sheet(isPresented: $isShowingModal, content: {
                ZStack{
                    Color.orange.ignoresSafeArea()
                    Text("Modal View")
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
