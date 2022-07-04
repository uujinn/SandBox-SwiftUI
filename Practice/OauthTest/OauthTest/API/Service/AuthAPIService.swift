//
//  AuthAPIService.swift
//  OauthTest
//
//  Created by 양유진 on 2022/07/04.
//

import Foundation
import Alamofire
import Combine

// 인증 관련 API 호출
enum AuthAPIService {
//  static func login(email: String, password: String) ->
  
  static func register(name: String, email: String, password: String) -> AnyPublisher<UserData, AFError>{
    print("AuthAPIService - register() called")
    
    return ApiClient.shared.session
      .request(AuthRouter.register(name: name, email: email, password: password))
      .publishDecodable(type: AuthResponse.self)
      .value()
      .map{ receivedValue in
        return receivedValue.user
      }.eraseToAnyPublisher()
  }
}
