//
//  ContentView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/18.
//

import SwiftUI

struct ContentView: View {
  
  @State var index = 0
  private var backgroundColors = [
    Color.yellow,
    Color.blue,
    Color.gray,
    Color.green
  ]
  
  var body: some View {
    VStack{
      Spacer()
      musicPlay()
        .padding(40)
      Spacer()
    }
    .frame(maxWidth: .infinity)
    .background(backgroundColors[index])
    .edgesIgnoringSafeArea(.all)
    .onTapGesture {
      //index가 background숫자보다 1이 낮으면 index = 0
      if(self.index == self.backgroundColors.count-1){
        self.index = 0
        //그게 아니라면 index 값 + 1
      }else {
        self.index += 1
      }
      
      
    }
  }
  
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
