//
//  MyBasicCard.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

struct MyBasicCard: View{
    
    var body: some View{
        
        HStack(spacing: 20){
            Image(systemName: "person.3")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .frame(width: 100, height: 100)
            VStack(alignment: .leading, spacing: 0){
                Divider().opacity(0)
                Text("눈길 발표 준비")
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer().frame(height: 5)
                Text("12 AM - 12:20 AM")
                    .foregroundColor(.white)
            }
            
        }
        .padding(10)
        .background(Color.indigo)
        .cornerRadius(20)
        
        
    }
}


struct MyBasicCard_Previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}
