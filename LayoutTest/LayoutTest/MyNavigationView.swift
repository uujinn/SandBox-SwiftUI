//
//  MyNavigationView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/05/02.
//

import SwiftUI


struct MyNavigationView: View {
    var body: some View{
        NavigationView{
            MyList()
                .navigationBarTitle("안녕하세요!")
                .navigationBarItems(leading: Button(action:{
                    print("호호")
                }){
                    Text("호호")
                }
            ,trailing:
            NavigationLink(destination:
                    Text("넘어온 화면입니다.")
                ){
//                    Text("네비게이션")
                    Image(systemName: "bookmark.fill")
                        .font(.system(size:20))
                        .foregroundColor(Color.yellow)
                }
            )
        }
    }
}

struct MyNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MyNavigationView()
    }
}
