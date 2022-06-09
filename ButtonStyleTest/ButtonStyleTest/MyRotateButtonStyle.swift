//
//  MyRotateButtonStyle.swift
//  ButtonStyleTest
//
//  Created by 양유진 on 2022/06/10.
//

import SwiftUI

struct MyRotateButtonStyle: ButtonStyle {
  var color: Color
  func makeBody(configuration: Configuration) -> some View{
    configuration
      .label
      .font(.system(size: 20))
      .foregroundColor(Color.white)
      .padding()
      .background(color)
      .cornerRadius(20)
      .rotationEffect(configuration.isPressed ? .degrees(90) : .degrees(0))
  }
}

struct MyRotateButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
      Button(action: {
        print("Button Clicked()")
      }, label: {
        Text("호호")
      })
      .buttonStyle(MyRotateButtonStyle(color: Color.green))
    }
}
