//
//  ProfileView.swift
//  Deeplink
//
//  Created by 양유진 on 2022/06/13.
//

import SwiftUI

struct ProfileView: View {
  var body: some View {
    Rectangle()
      .foregroundColor(Color.purple)
      .frame(width: 100, height: 100)
      .cornerRadius(15)
      .overlay(
        Text("프로필")
          .font(.system(size: 23))
          .fontWeight(.black)
          .foregroundColor(.white)
      )
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
