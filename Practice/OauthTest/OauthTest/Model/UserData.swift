//
//  UserData.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/27.
//

import Foundation

struct UserData: Codable, Identifiable{
  var uuid: UUID = UUID()
  var id: Int
  var name: String
  var email: String
  var avatar: String
  
  private enum CodingKeys: String, CodingKey{
    case id
    case name
    case email
    case avatar
  }
}
