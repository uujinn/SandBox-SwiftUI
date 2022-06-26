//
//  LoginView.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/27.
//

import SwiftUI

struct LoginView: View {
  
  @State var emailInput: String = ""
  @State var passwordInput: String = ""
  var body: some View {
    VStack{
      Form{
        Section(header: Text("로그인 정보"), content: {
          TextField("이메일", text: $emailInput)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .disableAutocorrection(true)
          SecureField("비밀번호", text: $passwordInput)
            .keyboardType(.default)
        })
        Section{
          Button {
            print("로그인 버튼 클릭")
          } label: {
            Text("로그인 하기")
          }

        }
      }
    }
    .navigationTitle("Login")
  }
}


struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
