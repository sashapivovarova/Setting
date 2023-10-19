//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct Student {
    let name: String
    let pet: Pet?
}

struct Pet {
    let name: String
    let age: Int
}

struct ContentView: View {
    let student = Student(name: "sasha", pet: Pet(name: "puppy", age: 2))
    
   var body: some View {
       VStack{
           Text(student.name)
//           Text(student.pet!.name)
           if let petName = student.pet?.name {
               Text(petName)
           }
       }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
