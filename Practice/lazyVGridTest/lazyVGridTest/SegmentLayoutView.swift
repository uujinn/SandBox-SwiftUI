//
//  SegmentLayoutView.swift
//  lazyVGridTest
//
//  Created by 양유진 on 2022/06/16.
//

import SwiftUI

enum LayoutType: CaseIterable {
  case table, grid, multiple
}

extension LayoutType{
  // 레이아웃 타입에 대한 컬럼이 자동으로 설정되도록 한다.
  var columns: [GridItem] {
    switch self{
    case .table:
      return [
        // flexible 하나로 한줄 표현
        GridItem(.flexible())
        
      ]
    case .grid:
      return [
        // flexibled 두 개를 넣어서 두 개 아이템 들어가게 함
        GridItem(.flexible()),
        GridItem(.flexible())
      ]
    case .multiple:
      return [
        // adaptive를 통해 크기 닿을 때까지 아이템 여러개 넣기
        GridItem(.adaptive(minimum: 100))
      ]
    }
  }
}

struct SegmentLayoutView: View {
  
  var dummyDatas = MyModel.dummyDataArray
  
  @State var selectedLayoutType: LayoutType = .table
  var body: some View {
    VStack{
      // 피커
      Picker(selection: $selectedLayoutType, label: Text("레이아웃 타입"), content: {
        ForEach(LayoutType.allCases, id: \.self, content: { layoutType in
          switch layoutType {
          case .table:
            Image(systemName: "list.dash")
          case .grid:
            Image(systemName: "square.grid.2x2.fill")
          case .multiple:
            Image(systemName: "circle.grid.2x2.fill")
          }
        })
      })
      .pickerStyle(SegmentedPickerStyle())
      ScrollView{
        LazyVGrid(columns: selectedLayoutType.columns, content: {
          ForEach(dummyDatas) { dataItem in
            Rectangle().frame(height: 100)
              .foregroundColor(.blue)
            
          }
          Rectangle()
        })
      }
    }
  }
  
  struct SegmentLayoutView_Previews: PreviewProvider {
    static var previews: some View {
      SegmentLayoutView()
    }
  }
}
