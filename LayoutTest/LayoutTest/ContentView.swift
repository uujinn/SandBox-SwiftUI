//
//  ContentView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var isNavigationBarHidden : Bool = false
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottomTrailing){
                VStack(alignment: .leading, spacing: 0){
                    
                    HStack{
                        NavigationLink(destination: MyList()){
                            Image(systemName: "line.horizontal.3")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                        }
                        
                        Spacer()
                        NavigationLink(destination: MyProfile(isNavigtaionBarHidden: self.$isNavigationBarHidden)){
                            Image(systemName: "person.crop.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.black)
                                .navigationTitle("뒤로가기")
                        }
                            
                        
                        
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
                            MyCard(icon: "book.fill", title: "책 읽기", start: "12:30 AM", end: "1 AM", bgColor: Color.red)
                            MyCard(icon: "leaf.fill", title: "블로그", start: "1:30 AM", end: "2:00 AM", bgColor: Color.green)
                            MyCard(icon: "hands.sparkles", title: "씻기", start: "2:00 AM", end: "2:15 AM", bgColor: Color.blue)
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
                
            }//ZStack
            .navigationTitle("Main")
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        }// NavigationView

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
