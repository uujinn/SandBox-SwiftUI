//
//  ContentView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            VStack(alignment: .leading, spacing: 0){
                
                HStack{
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    Spacer()
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding(20)
                
                
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 15)
                
                ScrollView{
                    VStack{
                        
                        MyProjectCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                        MyBasicCard()
                    }.padding()
                }
            }


        
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                        Image(systemName: "plus")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 20)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
