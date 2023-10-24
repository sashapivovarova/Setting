//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var userID: String = ""
    @State var userPW: String = ""
    @State var hasLoggedIn: Bool = false
    @State var isOn: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "person.fill")
                TextField("Enter ID", text: $userID).textFieldStyle(.roundedBorder)
            }
            HStack{
                Image(systemName: "lock.fill")
                if isOn {
                    TextField("Enter PW", text: $userPW).textFieldStyle(.roundedBorder)
                } else {
                    SecureField("Enter PW", text: $userPW).textFieldStyle(.roundedBorder)
                }
                Button {
                    isOn.toggle()
                } label: {
                    Image(systemName: "eye").foregroundColor(.black)
                }
            }
            Button {
                if userID == "1234" && userPW == "1234" {
                    hasLoggedIn = true
                } else {
                    hasLoggedIn = false
                }
            } label: {
                Text("Log In")
            }
        }
        .padding()
        .sheet(isPresented: $hasLoggedIn, content: {
            Text("Welcome, \(userID)")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
