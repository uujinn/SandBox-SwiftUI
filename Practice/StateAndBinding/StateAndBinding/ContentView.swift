//
//  ContentView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/18.
//

import SwiftUI

struct ContentView: View {
  @State private var test = 0
  var body: some View {
    ChildView(qwe: $test)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
