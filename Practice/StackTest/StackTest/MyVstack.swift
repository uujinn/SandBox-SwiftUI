//
//  ContentView.swift
//  StackTest
//
//  Created by 양유진 on 2022/04/23.
//

import SwiftUI

struct MyVstack: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            
//            Spacer()
//            Divider()
//                .opacity(0)
//            Rectangle()
//                .frame(height: 1)
            
            Text("글자").font(.system(size: 30))
                .fontWeight(.heavy)
            
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.red)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.yellow)
//            Spacer().frame(height: 50)
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
            
//            Spacer()
            
        }
        .frame(width: 300)
        .background(Color.green)
//        .edgesIgnoringSafeArea(.all)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}
