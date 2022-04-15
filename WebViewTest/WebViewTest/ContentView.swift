//
//  ContentView.swift
//  WebViewTest
//
//  Created by 양유진 on 2022/04/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        MyWebview(urlToLoad: "https://www.naver.com")
        
        NavigationView{
            
            HStack{
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.naver.com")
                    .navigationBarTitle("")
                    .navigationBarTitleDisplayMode(.inline)
                    .edgesIgnoringSafeArea(.all)){
                    Text("NAVER")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(15)
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
                
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.daum.net").edgesIgnoringSafeArea(.all)){
                    Text("DAUM")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(15)
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
                NavigationLink(destination: MyWebview(urlToLoad: "https://www.google.com").edgesIgnoringSafeArea(.all)){
                    Text("GOOGLE")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(15)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
