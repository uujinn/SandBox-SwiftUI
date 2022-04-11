//
//  MyTextView.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/12.
//

import SwiftUI

struct MyTextView: View{
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var index: Int = 0
    private let backgroundColorsArr = [
        Color.red,
        Color.yellow,
        Color.blue,
        Color.indigo,
        Color.orange
    ]
    var body: some View{
    
        
        
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            Spacer()
        }.background(backgroundColorsArr[index])
            .onTapGesture {
                print("배경 아이템 클릭")
                self.index += 1
                self.index %= 5
            }
//            .edgesIgnoringSafeArea(.top)
//            .ignoresSafeArea(.all)
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}
