//
//  ContentView.swift
//  TextTest
//
//  Created by 양유진 on 2022/04/17.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    var trueOrFalse: Bool = false
    var body: some View {
        VStack{
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
                .tracking(1.5)
                .font(.system(.body, design: .serif))
                .fontWeight(.medium).multilineTextAlignment(.leading)
                .lineLimit(nil)
                .lineSpacing(20)
                .truncationMode(.middle)
                .shadow(color: .red, radius: 1.5, x: 7, y: 5)
            
                .padding(.all, 20)
                .background(Color.yellow)
                .cornerRadius(20)
                
                .padding()
                .background(Color.green)
                .cornerRadius(20)
                .padding()
                .background(Color.white)
            Text("안녕하세요!")
                .background(Color.gray)
                .foregroundColor(Color.white)
            
            Text("오늘의 날짜입니다: \(today, formatter: ContentView.dateFormat)")
                
            Text("참 혹은 거짓: \(String(trueOrFalse))")
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
