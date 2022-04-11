//
//  MyVstackView.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/12.
//

import SwiftUI

struct MyVstackView: View{
    var body: some View{
        VStack{
            Text("1!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("2!")
                .fontWeight(.bold)
                .font(.system(size: 60))
            Text("3!")
                .fontWeight(.bold)
                .font(.system(size: 60))
        }.background(Color.red)
    }
}

struct MyVstackView_PreviewProvider: PreviewProvider{
    static var previews: some View{
        Text("Hello, world")
    }
}
