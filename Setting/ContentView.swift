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
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        Text("detail")
                    } label: {
                        HStack{
                            Image("eunsol")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60, height: 60)
                                .padding(.all,5)
                                .background(.gray)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            VStack(alignment: .leading, spacing: 3) {
                                Text("Anastasia Grey")
                                    .font(.system(size: 24, weight: .regular))
                                Text("Apple ID, iColud, 미디어 및 구입")
                                    .font(.system(size: 14))
                            }
                            .padding(.leading, 5)
                        }
                    }
                }
                
                Section {
                    HStack{
                        Image(systemName: "hourglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.indigo)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("스크린 타임") {
                            Text("detail")
                        }
                    }
                }
                
                Section {
                    HStack{
                        Image(systemName: "gear")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.gray)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("일반") {
                            Text("detail")
                        }
                    }
                    HStack{
                        Image(systemName: "accessibility")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("손쉬운 사용") {
                            Text("detail")
                        }
                    }
                    HStack{
                        Image(systemName: "heart")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        NavigationLink("개인 정보 보호") {
                            Text("detail")
                        }
                    }
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
