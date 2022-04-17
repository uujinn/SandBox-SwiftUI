//
//  ContentView.swift
//  ImageTest
//
//  Created by 양유진 on 2022/04/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Image("myimage")
                    .frame(height: 10)
                    .offset(y: -3100)
                
                CircleImageView()
                HStack{
                    NavigationLink(destination: MyWebview(url: "https://github.com/uujinn")){
                        Text("GITHUB")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(20)
                            .navigationBarTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .edgesIgnoringSafeArea(.all)
                    }
                    .padding()
                    NavigationLink(destination: MyWebview(url: "https://asxpyn.tistory.com")){
                        Text("TISTORY")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(20)
                            .navigationBarTitle("")
                            .navigationBarTitleDisplayMode(.inline)
                            .edgesIgnoringSafeArea(.all)
                    }
                }// HSTACK
                .padding(50)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
