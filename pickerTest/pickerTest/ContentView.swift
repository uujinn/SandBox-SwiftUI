//
//  ContentView.swift
//  pickerTest
//
//  Created by 양유진 on 2022/06/13.
//

import SwiftUI

struct ContentView: View {
  
  @State private var selectionValue = 0
  var body: some View {
    VStack(alignment: .center){
      Text("선택된 값: \(selectionValue)")
      Picker(selection: $selectionValue,
             label: Text(""),
             content: {
        Text("레드").tag(0)
        Text("그린").tag(1)
        Text("블루").tag(2)
      }).pickerStyle(SegmentedPickerStyle())
      
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
