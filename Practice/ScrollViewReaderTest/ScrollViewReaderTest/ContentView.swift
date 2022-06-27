//
//  ContentView.swift
//  ScrollViewReaderTest
//
//  Created by 양유진 on 2022/06/27.
//

import SwiftUI

struct ContentView: View {
  @State private var selectedIndex = 0
  
  @Namespace var topID
  @Namespace var bottomID
  var body: some View {
    VStack{
      ScrollViewReader{ proxy in
        ScrollView(.vertical, showsIndicators: false){
          Button("Scroll to Bottom"){
            withAnimation {
              proxy.scrollTo(bottomID)
            }
          }
          .id(topID)
          ForEach(0..<70, content: { index in
            Text("HIHIHIHIH \(index)")
              .background(Color.yellow)
              .padding()
              .id(index)
          })
          .onChange(of: selectedIndex) { newValue in
            print("chagedIndex: ", newValue)
            withAnimation(.linear(duration: 30)) {
              proxy.scrollTo(newValue, anchor: .center)
            }
          }
          Button("Scroll to Top"){
            withAnimation {
              proxy.scrollTo(topID)
            }
          }
          .id(bottomID)
        }
        .animation(.linear(duration: 30))
      }
      HStack(spacing: 10){
        Button {
          selectedIndex = 0
        } label: {
          Text("인덱스: 0").padding()
        }
        Button {
          selectedIndex = 20
        } label: {
          Text("인덱스: 20").padding()
        }
        Button {
          selectedIndex = 40
        } label: {
          Text("인덱스: 40").padding()
        }

      }
    }//VStack
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
