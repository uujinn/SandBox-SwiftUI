//
//  ContentView.swift
//  ButtonStyleTest
//
//  Created by 양유진 on 2022/06/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(spacing: 30){
        Button(action: {
          
        }, label: {
          Text("탭")
            .fontWeight(.bold)
        }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
        Button(action: {
          
        }, label: {
          Text("롱클릭")
            .fontWeight(.bold)
        }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
        Button(action: {
          
        }, label: {
          Text("회전")
            .fontWeight(.bold)
        }).buttonStyle(MyRotateButtonStyle(color: Color.red))
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
