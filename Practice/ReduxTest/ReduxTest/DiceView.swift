//
//  DiceView.swift
//  ReduxTest
//
//  Created by 양유진 on 2022/06/23.
//

import Foundation
import SwiftUI

struct DiceView: View {
  
  // 외부에서 environmentObject() 로 연결됨
  @EnvironmentObject var store : AppStore
  
  @State private var shouldRoll = false
  
  @State private var pressed = false
  
  var diceRoolAnimation: Animation {
    Animation.spring()
  }
  
  // 주사위 굴리기 액션을 실행
  func rollTheDice(){
    print(#fileID, #function, #line)
    self.shouldRoll.toggle()
    
    self.store.dispatch(action: .rollTheDice)
  }
  
  var body: some View{
    VStack{
      Text(self.store.state.currentDice)
        .font(.system(size: 300, weight: .bold, design: .monospaced))
        .foregroundColor(Color.init(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
        .rotationEffect(.degrees(shouldRoll ? 360 : 0))
        .animation(diceRoolAnimation)
      Button(action: {
        self.rollTheDice()
      }, label: {
        Text("랜덤 주사위 굴리기")
          .fontWeight(.black)
      }).buttonStyle(MyButtonStyle())
        .scaleEffect(self.pressed ? 0.8 : 1.0)
        .onLongPressGesture(minimumDuration: .infinity, maximumDistance: .infinity, pressing: { pressing in
          withAnimation(.easeInOut(duration: 0.2), {
            self.pressed = pressing
          })
        }, perform: {})
    }
    
  }
}


