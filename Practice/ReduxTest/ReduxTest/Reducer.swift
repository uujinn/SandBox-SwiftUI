//
//  Reducer.swift
//  ReduxTest
//
//  Created by 양유진 on 2022/06/23.
//

import Foundation

// (inout State, Action)  -> Void 해당 클로저 자체를 별칭으로 Reducer로 칭함
// State와 Action을 가지고 있음
// typealias 별칭으로 만든다
typealias Reducer<State, Action> = (inout State, Action) -> Void

// 필터링을 하는 메소드
func appReducer(_ state: inout AppState, _ action: AppAction)-> Void{
  
  // 들어오는 액션에 다라 분기 처리 (필터링)
  switch action {
  case .rollTheDice:
    // 앱의 상태 변경
    state.currentDice = ["⚀","⚁","⚂","⚃","⚄","⚅"].randomElement() ?? "⚀"
  }
}
