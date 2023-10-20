//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    @State var progress: Double = 0.5
    
    var body: some View {
        VStack {
            ProgressView(value: progress)
            Button("More") {
                if progress > 1 {
                    progress = 0
                } else {
                    progress += 0.05
                }
            }
            Text(progress.description)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
