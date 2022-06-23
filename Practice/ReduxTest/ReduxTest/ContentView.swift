//
//  ContentView.swift
//  ReduxTest
//
//  Created by 양유진 on 2022/06/23.
//

import SwiftUI

struct ContentView: View {
  
  // store 생성
  let store = AppStore(state: AppState.init(currentDice: "⚀"), reducer: appReducer(_:_:))
  var body: some View {
    // subview에 observable object 연결
    DiceView().environmentObject(store)
  }
}

//struct ContentView_Previews: PreviewProvider {
//  static var previews: some View {
//    ContentView()
//  }
//}
