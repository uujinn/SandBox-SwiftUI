//
//  MyBasicCard.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

struct MyCard: View{
    
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    
    var body: some View{
        
        HStack(spacing: 20){
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text(title)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
            
        }
        .padding(10)
        .background(bgColor)
        .cornerRadius(20)
        
        
    }
}


struct MyCard_Previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "12:30 AM", end: "1 AM", bgColor: Color.green)
    }
}
