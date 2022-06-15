//
//  ContentView.swift
//  lazyVGridTest
//
//  Created by 양유진 on 2022/06/16.
//

import SwiftUI

struct MyModel: Identifiable {
  let id = UUID()
  let title: String
  let content: String
}

extension MyModel {
  static var dummyDataArray: [MyModel] {
    (1...2000).map{ (number: Int) in
      MyModel(title: "타이틀: \(number)", content: "컨텐트: \(number)")
    }
  }
}

struct ContentView: View {
  
  var dummyDataArray = MyModel.dummyDataArray
  
  var body: some View {
    
    // ScrollView로 감싸서 스크롤 가능하도록 설정
    ScrollView{
      // Column은 Horizontal Item Layout 설정함
      // .fixed 고정
      // .adaptive 여러 개 채우기 - 계산해서 분할로 채우기
      // .flexible 하나만 채우기 - 계산해서 분할로 채우기
      LazyVGrid(columns: [GridItem(.fixed(200)),
                          GridItem(.adaptive(minimum: 50)),
                          GridItem(.flexible(minimum: 50))], spacing: 10, content:{
        ForEach(dummyDataArray, content: { (dataItem: MyModel) in
          Rectangle().foregroundColor(.blue).frame(height: 120)
            .overlay(
              Text("\(dataItem.title)")
            )
        })
      })
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
