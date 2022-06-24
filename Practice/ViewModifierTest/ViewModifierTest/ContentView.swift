//
//  ContentView.swift
//  ViewModifierTest
//
//  Created by 양유진 on 2022/06/25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 30){
      Text("Hello, world!")
        .myRoundedTextStyle()
      Text("Hello, world!")
        .modifier(MyRoundedText())
      Image(systemName: "pencil")
        .myRoundedTextStyle()
    }
  }
}


// 뷰를 꾸며주는 Modifier
struct MyRoundedText: ViewModifier{
  func body(content: Content) -> some View {
    content
      .font(.system(size: 20))
      .foregroundColor(.black)
      .padding()
      .background(Color.yellow)
      .padding()
      .overlay(RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 5)).foregroundColor(Color.red)
  }
}

extension View {
  func myRoundedTextStyle() -> some View{
    modifier(MyRoundedText())
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
