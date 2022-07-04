//
//  AuthResponse.swift
//  OauthTest
//
//  Created by 양유진 on 2022/07/04.
//

import Foundation

struct AuthResponse : Codable {
    var user: UserData
    var token: TokenData
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
}
