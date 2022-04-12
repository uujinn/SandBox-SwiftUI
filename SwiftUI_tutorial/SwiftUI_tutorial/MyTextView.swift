//
//  MyTextView.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/12.
//

import SwiftUI

struct MyTextView: View{
    
    // 데이터를 연동
    @Binding
    var isActivated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> =
        .constant(true)) {
        _isActivated = isActivated
    }
    
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
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Text("활성화 상태: \(String(isActivated))")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .foregroundColor(self.isActivated ? Color.yellow:Color.gray)
                .background(Color.black)
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
