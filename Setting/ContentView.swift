//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct Friend {
    let name: String
    let pet: Pet?
}

enum Pet {
    case cat(String)
    case dog(String)
}

struct ContentView: View {
    var sasha: Friend = Friend(name: "sasha", pet: Pet.cat("corgy"))
    var nico: Friend = Friend(name: "nico", pet: Pet.dog("shiba"))
    @State var pet: String = "Do you have a pet?"
    
    var body: some View {
        VStack{
            Text(pet)
            Button {
                if let petName = nico.pet {
                    pet = getPetName(petName)
                } else {
                    pet = "No, I don't have a pet."
                }
            } label: {
                Text("Push")
            }
        }
    }
    
    func getPetName(_ petName: Pet) -> String {
        switch petName {
        case .dog(let name): return name
        case .cat(let name): return name
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
