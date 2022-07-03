//
//  APILogger.swift
//  OauthTest
//
//  Created by 양유진 on 2022/07/04.
//

import Foundation
import Alamofire

final class APILogger: EventMonitor {
  let queue = DispatchQueue(label: "Oauth_alamofire_tutorial_APILogger")
  
  func requestDidResume(_ request: Request) {
    print("APILogger - Resuming: \(request)")
  }
  
  func request(_ request: DataRequest, didParseResponse response: DataResponse<Data?, AFError>) {
    debugPrint("APILogger - Finished: \(response)")
  }
}
