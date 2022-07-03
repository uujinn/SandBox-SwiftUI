//
//  APIClient.swift
//  OauthTest
//
//  Created by 양유진 on 2022/07/04.
//

import Foundation
import Alamofire

// Api 호출 클라이언트
final class ApiClient {
  static let shared = ApiClient()
  
  static let BASE_URL = "https://dev-jeongdaeri-oauth.tk/api"
  
  let interceptors = Interceptor(interceptors: [
    BaseInterceptor() // application/json
  ])
  
  let monitors = [APILogger()] as [EventMonitor]
  
  var session: Session
  
  init() {
    print("ApiClient - init() called")
    session = Session(interceptor: interceptors, eventMonitors: monitors)
  }
  
  
}
