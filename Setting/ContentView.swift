//
//  ContentView.swift
//  Setting
//
//  Created by Anastasia Grey on 2023/10/17.
//

import SwiftUI

struct ContentView: View {
    
    @State var airplane: Bool = false
    
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
                        Image(systemName: "airplane")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .padding(.all, 4)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(6)
                        Toggle("에어플레인 모드", isOn: $airplane)
                    }
                    navigationLinkCell(systemName: "wifi", linkTitle: "Wi-Fi", bColor: .blue, subtitle: "Concentrate&Coffee break") {Text("Detail")}
                    navigationLinkCell(systemName: "bolt", linkTitle: "Bluetooth", bColor: .blue, subtitle: "켬") {Text("Detail")}
                    navigationLinkCell(systemName: "antenna.radiowaves.left.and.right", linkTitle: "셀룰러", bColor: .green) {Text("Detail")}
                    navigationLinkCell(systemName: "safari", linkTitle: "개인용 핫스팟", bColor: .green) {Text("Detail")}
                }
                
                Section {
                    navigationLinkCell(systemName: "bell.fill", linkTitle: "알림", bColor: .red) {Text("Detail")}
                    navigationLinkCell(systemName: "bell.fill", linkTitle: "사운드 및 햅틱", bColor: .red) {Text("Detail")}
                    navigationLinkCell(systemName: "moon.fill", linkTitle: "집중 모드", bColor: .indigo) {Text("Detail")}
                    navigationLinkCell(systemName: "hourglass", linkTitle: "스크린 타임", bColor: .indigo) {Text("Detail")}
                }
                
                Section {
                    navigationLinkCell(systemName: "gear", linkTitle: "일반", bColor: .gray) {Text("Detail")}
                    navigationLinkCell(systemName: "control", linkTitle: "제어 센터", bColor: .gray) {Text("Detail")}
                    navigationLinkCell(systemName: "display", linkTitle: "디스플레이 및 밝기", bColor: .blue) {Text("Detail")}
                    navigationLinkCell(systemName: "house", linkTitle: "홈 화면 및 앱 보관함", bColor: .indigo) {Text("Detail")}
                }
            }
            .navigationTitle(Text("설정"))
        }
    }
    
    @ViewBuilder
    private func navigationLinkCell<V: View>(systemName: String, linkTitle: String, bColor: Color,subtitle: String? = nil, destination: @escaping () -> V) -> some View {
        
        HStack{
            Image(systemName: systemName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(bColor)
                .foregroundColor(.white)
                .cornerRadius(6)
            
            if let subtitle = subtitle {
                NavigationLink {
                    Text("detail")
                } label: {
                    HStack{
                        Text(linkTitle)
                        Spacer()
                        Text(subtitle)
                            .font(.system(size: 15))
                            .foregroundColor(.gray)
                    }
                }
            } else {
                NavigationLink(linkTitle) {
                    destination()
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
