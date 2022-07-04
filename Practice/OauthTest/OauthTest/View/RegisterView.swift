//
//  RegisterView.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/27.
//

import SwiftUI

struct RegisterView: View {
  
  @EnvironmentObject var userViewModel: UserViewModel
  
  @State var nameInput: String = ""
  @State var emailInput: String = ""
  @State var passwordInput: String = ""
  var body: some View {
    VStack{
      Form{
        //이름
        Section(header: Text("이름"), content: {
          TextField("이름을 입력해주세요.", text: $nameInput)
            .keyboardType(.default)
            .autocapitalization(.none)
            .disableAutocorrection(true)
        })
        // 이메일
        Section(header: Text("이메일"), content: {
          TextField("이메일을 입력해주세요.", text: $emailInput)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .disableAutocorrection(true)
        })
        // 비밀번호
        Section(header: Text("로그인 정보"), content: {
          SecureField("비밀번호", text: $passwordInput)
            .keyboardType(.default)
          SecureField("비밀번호 확인", text: $passwordInput)
            .keyboardType(.default)
        })
        Section{
          Button {
            print("회원가입 버튼 클릭")
            userViewModel.register(name: nameInput, email: emailInput, password: passwordInput)
          } label: {
            Text("회원가입 하기")
          }
          
        }
      }
    }
    .navigationTitle("Register")
  }
}

struct RegisterView_Previews: PreviewProvider {
  static var previews: some View {
    RegisterView()
  }
}
