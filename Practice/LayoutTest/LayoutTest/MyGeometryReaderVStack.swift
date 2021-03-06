//
//  MyGeometryReaderVStack.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/05/28.
//

import SwiftUI

enum Index {
    case one, two, three
}

struct MyGeometryReaderVStack: View {
    
    @State var index: Index = .one
    
    
    var body: some View{
        GeometryReader{ proxy in
            VStack(spacing: 0){
                Button(action:{
                    print("1번 클릭")
                    withAnimation{
                        self.index = .one
                    }
                }){
                    Text("1")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: proxy.size.width / 4, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .one ? 50: 0)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                }
                Button(action:{
                    print("2번 클릭")
                    withAnimation{
                        self.index = .two
                    }
                }){
                    Text("2")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: proxy.size.width / 4, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .two ? 50: 0)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                }
                Button(action:{
                    print("3번 클릭")
                    withAnimation{
                        self.index = .three
                    }
                }){
                    Text("3")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .frame(width: proxy.size.width / 4, height: proxy.size.height / 3)
                        .padding(.horizontal, self.index == .three ? 50: 0)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                }

            }
            .position(CGPoint(x: proxy.frame(in: .local).midX, y: proxy.frame(in: .local).midY))
//            .background(Color.yellow)
//                .frame(width: proxy.size.width, height: proxy.size.height, alignment: .center)
            
        }.background(Color.yellow)
            .ignoresSafeArea()
    }
}

struct MyGeometryReaderVStack_Previews: PreviewProvider{
    static var previews: some View{
        MyGeometryReaderVStack()
    }
}
