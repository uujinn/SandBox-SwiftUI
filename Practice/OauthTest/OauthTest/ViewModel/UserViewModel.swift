//
//  UserViewModel.swift
//  OauthTest
//
//  Created by 양유진 on 2022/07/04.
//

import Foundation
import Alamofire
import Combine

class UserViewModel: ObservableObject{
  
  //MARK: properties
  var subscription = Set<AnyCancellable>()
  
  @Published var loggedInUser: UserData? = nil
  
  // 회원가입 하기
  func register(name: String, email: String, password: String){
    print("UserViewModel - register() called")
    AuthAPIService.register(name: name, email: email, password: password)
      .sink { (completion: Subscribers.Completion<AFError>) in
        print("UserViewModel completion: \(completion)")
      } receiveValue: { (receivedData: UserData) in
        self.loggedInUser = receivedData
      }.store(in: &subscription)

  }
}
