//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        VStack{
            Button {
                isShowingAlert = true
            }label: {
                Text("Show me the alert")
            }
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Something is wrong!"),
                      primaryButton: .default(Text("OK")),
                      secondaryButton: .cancel())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
