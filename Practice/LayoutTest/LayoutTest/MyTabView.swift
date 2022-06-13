//
//  MyTabView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/05/31.
//

import SwiftUI

struct MyTabView: View{
    var body: some View{
        TabView{
            // 보여질 화면
            MyView(title: "1번", bgColor: Color.orange)
                .tabItem{
                    Image(systemName: "airplane")
                    Text("1번")
                }
                .tag(0)
            MyView(title: "2번", bgColor: Color.yellow)
                .tabItem{
                    Image(systemName: "flame.fill")
                    Text("2번")
                }
                .tag(0)
            MyView(title: "3번", bgColor: Color.blue)
                .tabItem{
                    Image(systemName: "doc.fill")
                    Text("3번")
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
