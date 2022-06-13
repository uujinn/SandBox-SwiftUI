//
//  MyGeomatryReader.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/05/28.
//

import SwiftUI

struct MyGeometryReader: View {
    var body: some View{
        
        GeometryReader{ geometryReader in
            HStack(spacing: 0){
                Text("1")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .background(Color.red)
                    .foregroundColor(Color.white)
                Text("2")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                Text("3")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .frame(width: geometryReader.size.width / 3)
                    .background(Color.green)
                    .foregroundColor(Color.white)
//                Text("4")
//                    .font(.largeTitle)
//                    .fontWeight(.black)
//                    .frame(width: 50)
//                    .background(Color.purple)
//                    .foregroundColor(Color.white)
            }.background(Color.yellow)
                .frame(width: geometryReader.size.width, height: geometryReader.size.height, alignment: .center)
            
        }.background(Color.black)
        
    }
}

struct MyGeometryReader_Previews: PreviewProvider{
    static var previews: some View{
        MyGeometryReader()
    }
}
