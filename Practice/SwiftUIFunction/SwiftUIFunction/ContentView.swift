//
//  ContentView.swift
//  SwiftUIFunction
//
//  Created by 양유진 on 2022/06/19.
//

import SwiftUI

struct ContentView: View {
  
  @State var arr1: [String] = ["하나", "둘", "셋"]
  @State var arr2: [String] = ["넷", "다섯", "여섯"]
  
  let numbers: [Int] = [0,1,2,3,4]

  var body: some View {
    List{
      Section(header: Text("First section")) {
        ForEach(arr1, id: \.self) { s in
          Text(s)
        }
      }
      Section(header: Text("Second section")) {
        ForEach(arr2, id: \.self) {
          Text($0)
        }
      }
    }// List
    .listStyle(.plain)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
