//
//  ContentView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/18.
//

import SwiftUI

struct ContentView: View {
  
  @EnvironmentObject var viewModel: MyViewModel
  
  @State private var count = 0
  
  @State var appTitle: String = ""
  
//  var appTitle: String
//  init(appTitle: String = "나에 일상"){
//    self.appTitle = appTitle
//  }
  
  var body: some View {
    TabView{
      VStack{
        Text("Jedi count: \(count)")
          .padding()
        Button(action: {
          count = count + 1
          viewModel.appTitle = "변경된 App title \(count)"
        }, label: {
          Text("Count up")
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
        })
      }
      .tabItem {
        Label("English", systemImage: "pencil.circle")
      }
      KoreanView(count: $count)
        .tabItem {
          Label("Korean", systemImage: "folder.fill")
        }
      GithubView(count: $count)
        .padding()
        .tabItem {
          Label("Github", systemImage: "paperplane.fill")
        }
    }// TabView
    .overlay(Text(appTitle).offset(y: -(UIScreen.main.bounds.height * 0.4)))
    .onReceive(viewModel.$appTitle, perform: { receivedAppTitle in
      appTitle = receivedAppTitle
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(appTitle: "")
  }
}
