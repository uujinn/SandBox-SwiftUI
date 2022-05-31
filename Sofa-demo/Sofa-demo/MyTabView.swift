//
//  MyTabView.swift
//  Sofa-demo
//
//  Created by 양유진 on 2022/05/31.
//

import SwiftUI

struct MyTabView: View{
    var body: some View{
        TabView{
            // 보여질 화면
            HomeView(title: "HomeView", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("Home")
                }
                .tag(0)
            HomeView(title: "2번", bgColor: Color.yellow)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(0)
            HomeView(title: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
                }
                .tag(0)
            HomeView(title: "4번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "gear.fill")
                    Text("4번")
                }
                .tag(0)
        }
    }
}


struct MyTabView_Previews: PreviewProvider{
    static var previews: some View{
        MyTabView()
    }
}
