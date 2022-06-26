//
//  ContentView.swift
//  OverlayTest
//
//  Created by 양유진 on 2022/06/26.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    Rectangle().fill(Color.green).frame(width: 150, height: 150)
      .background(
        Rectangle().fill(Color.yellow)
          .offset(x: 30, y: 30)
      )
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
