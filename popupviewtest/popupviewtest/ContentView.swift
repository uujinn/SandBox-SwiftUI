//
//  ContentView.swift
//  popupviewtest
//
//  Created by 양유진 on 2022/06/12.
//

import SwiftUI
import ExytePopupView
import UIKit

struct ContentView: View {
  
  @State var shouldShowBottomSolidMessage: Bool = false
  @State var shoudlShowToastMessage: Bool = false
  
  func createBottomSolidMessage() -> some View{
    HStack(spacing: 10){
      Image(systemName: "book.fill")
        .font(.system(size: 40))
        .foregroundColor(Color.white)
      VStack(alignment: .leading){
        Text("안내 메시지")
          .fontWeight(.black)
          .foregroundColor(Color.white)
        Text("토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.토스트 메시지입니다.")
          .lineLimit(2)
          .font(.system(size: 14))
          .foregroundColor(Color.white)
        Divider().opacity(0)
      }
    }
    .padding()
    .frame(width: UIScreen.main.bounds.width)
    .padding(.bottom, UIDevice().hasNotch ? 15 : 0)
    .background(Color.purple)
    
  }
  
  var body: some View {
    ZStack{
      VStack(spacing: 10){
        Spacer()
        Button(action: {
          self.shouldShowBottomSolidMessage = true
        }){
          Text("BottomSolidMessage")
            .font(.system(size: 20))
            .fontWeight(.medium)
            .padding()
            .background(Color.purple)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        Button(action: {
          self.shoudlShowToastMessage = true
        }){
          Text("BottomToastMessage")
            .font(.system(size: 20))
            .fontWeight(.medium)
            .padding()
            .background(Color.yellow)
            .foregroundColor(Color.white)
            .cornerRadius(10)
        }
        
        Spacer()
        
      } // VStack
    } // ZStack
    .edgesIgnoringSafeArea(.bottom)
    .popup(isPresented: $shouldShowBottomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, backgroundColor: Color.blue.opacity(0), dismissCallback: {}, view: {
      createBottomSolidMessage()
    })
  }
}

extension UIDevice {
  var hasNotch: Bool {
    let bottom = UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.safeAreaInsets.bottom ?? 0
    return bottom > 0
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
