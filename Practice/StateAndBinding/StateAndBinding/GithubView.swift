//
//  GithubView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/25.
//

import SwiftUI

struct GithubView: View {
  
  @EnvironmentObject var viewModel: MyViewModel
  @Binding var count: Int
  
  init(count: Binding<Int> = .constant(99)){
    _count = count
  }
  
  var body: some View {
    VStack{
      Text("uujinn count: \(count)")
        .padding()
      Button(action: {
        count = count + 1
      }, label: {
        Text("Count up")
          .foregroundColor(.white)
          .padding()
          .background(Color.orange)
          .cornerRadius(10)
      })
    }
  }
}

struct GithubView_Previews: PreviewProvider {
  static var previews: some View {
    GithubView()
  }
}
