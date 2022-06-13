//
//   MyView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/05/31.
//

import SwiftUI

struct MyView: View{

    var title: String
    var bgColor: Color
    
    var body: some View{
        ZStack{
            bgColor
//                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }.animation(.none)
    }
}


struct MyView_Previews: PreviewProvider{
    static var previews: some View{
        MyView(title: "MyView", bgColor: Color.orange)
    }
}
