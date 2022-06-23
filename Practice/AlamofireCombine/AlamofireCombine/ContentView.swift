//
//  ContentView.swift
//  AlamofireCombine
//
//  Created by 양유진 on 2022/06/24.
//

import SwiftUI

struct ContentView: View {
  
  @ObservedObject var randomUserViewModel = RandomUserViewModel()
  
  var body: some View {
    List(randomUserViewModel.randomUsers){ aRandomUser in
      RandomUserRowView(aRandomUser)
    }
    .listStyle(.plain)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
