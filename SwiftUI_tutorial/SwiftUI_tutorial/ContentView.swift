//
//  ContentView.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/11.
//

import SwiftUI

struct ContentView: View {
    
    // @State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        
        NavigationView{
            VStack{
                HStack{
                    MyVstackView()
                    MyVstackView()
                    MyVstackView()
                } // Hstack
                .padding(isActivated ? 50.0 : 10.0)
                .background(isActivated ? Color.yellow: Color.black)
                // 탭 제스쳐 추가
                .onTapGesture {
                    
                    // 애니메이션
                    withAnimation{
    //                    print("HStack이 클릭되었음")
                        self.isActivated.toggle()
                
                    }
          
                } // Hstack
                
                // 네비게이션 버튼(링크)
                NavigationLink(destination: MyTextView()){
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 40))
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
            }// Vstack
        } // NavigationView

    }
}

// 보여주는 용도
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
