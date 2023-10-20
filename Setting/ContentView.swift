//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

enum Drink {
    case coffee(hasMilk: Bool)
    case juice
    case soft(color: Color)
    
    var name: String {
        switch self {
        case .coffee(hasMilk: let hasMilk):
            if hasMilk {
                return "latte"
            } else {
                return "americano"
            }
        case .juice:
            return "juice"
        case .soft(color: let color):
            switch color {
            case .orange: return "fanta"
            case .black: return "coke"
            default:
                return "soft"
            }
        }
    }
}

struct ContentView: View {
    let myDrinks: Drink = .soft(color: .black)
    
    var body: some View {
        VStack{
            Text(myDrinks.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
