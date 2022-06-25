//
//  KoreanView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/25.
//

import SwiftUI

struct KoreanView: View {
  
  @EnvironmentObject var viewModel: MyViewModel
  @Binding var count: Int
  
  @State var title: String = "타이틀 없음"
  
  var body: some View {
    VStack{
      Text(title)
        .font(.system(size: 26))
        .padding()
      Text("양유진 count: \(count)")
        .padding()
      
      Button(action: {
        count = count + 1
      }, label: {
        Text("Count up")
          .foregroundColor(.white)
          .padding()
          .background(Color.green)
          .cornerRadius(10)
      })
    }
    .onReceive(viewModel.$appTitle, perform: { receivedTitle in
      self.title = receivedTitle
    })
  }
}

//struct TodayView_Previews: PreviewProvider {
//  static var previews: some View {
////    KoreanView(count: $count)
//  }
//}
