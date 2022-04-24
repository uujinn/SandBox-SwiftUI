//
//  MyProjectCard.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

struct MyProjectCard: View{
    var body: some View{
        
        VStack(alignment: .leading, spacing: 0){
            Rectangle().frame(height:0)
            Text("SwiftUI 공부")
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding(.bottom, 5)
            Text("11:20 PM - 12:00 AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
            HStack{
                Image("cat1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(lineWidth: 5)
                            .foregroundColor(.gray)
                    )
                Image("cat2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("cat3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Text("확인")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 90)
                    .background(Color.blue)
                    .cornerRadius(20)
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
        
        
    }
}


struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
