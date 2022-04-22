//
//  ContentView.swift
//  StackTest
//
//  Created by 양유진 on 2022/04/23.
//

import SwiftUI

struct MyZstack: View {
    var body: some View {
        ZStack(){
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(.red)
                .zIndex(1)
                .offset(y: -100)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(.yellow)
            
            Rectangle()
                .frame(width:100, height: 100)
                .foregroundColor(.blue)
        }
//        .padding()
        .background(Color.green)
    }
}

struct MyZstack_Previews: PreviewProvider {
    static var previews: some View {
        MyZstack()
    }
}
