//
//  AppState.swift
//  ReduxTest
//
//  Created by 양유진 on 2022/06/23.
//

import Foundation

// 앱의 상태 즉 데이터 -
struct AppState {
  var currentDice: String = ""{
    didSet{
      print("currentDice: \(currentDice)", #fileID, #function)
    }
  }
}
