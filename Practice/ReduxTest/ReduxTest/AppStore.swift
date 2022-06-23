//
//  AppStore.swift
//  ReduxTest
//
//  Created by 양유진 on 2022/06/23.
//

import Foundation

// 앱스토어는 앱 상태와 앱 액션을 가지고 있다.
// 앱 상태를 지니고 있기 위해 앱스토어를 만들어준다.
typealias AppStore = Store<AppState, AppAction>

// ObservableObject 앱 상태를 가지고 있는 observable object store
final class Store<State, Action>: ObservableObject {
  
  // 외부에서 읽을수만 있도록 private(set) 설정
  @Published private(set) var state: State
  
  private let reducer: Reducer<State, Action>

  // generic 형태의 State
  // 즉 Store가 가지고 있는 generic state
  // 생성자 메소드
  // escaping으로 빠져나가기 위해 @escaping 넣어주기
  init(state: State, reducer: @escaping Reducer<State, Action>){
    self.state = state
    self.reducer = reducer
    
  }
  
  // dispatch를 통해 액션을 행함
  func dispatch(action: Action){
    // reducer 클로저를 실행해서 액션을 필터링
    reducer(&self.state, action)
  }
  
}
