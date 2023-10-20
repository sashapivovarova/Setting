//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var id: String = ""
    @State var password: String = ""
    @State var checking: Bool = false
    @State var success: Bool = false
    @State var fail: Bool = false
    
    var body: some View {
        VStack {
            TextField("Enter ID", text: $id)
                .textFieldStyle(.roundedBorder)
            HStack{
                if checking {
                    TextField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                } else {
                    SecureField("Enter Password", text: $password)
                        .textFieldStyle(.roundedBorder)
                }
                Button {
                    checking.toggle()
                }label: {
                    Image(systemName: "eye")
                }
            }
            Button {
                if password == "1234" {
                    success = true
                } else {
                    fail = true
                }
            } label: {
                Text("Log in")
            }
            .fullScreenCover(isPresented: $success) {
                ZStack{
                    Color.orange.ignoresSafeArea()
                    VStack{
                        Text("Welcome, \(id)")
                        Button {
                            success = false
                            fail = true
                        }label: {
                            Text("Log out")
                        }
                    }
                }
            }
            .alert(isPresented: $fail) {
                Alert(title: Text("Password is wrong!"))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
