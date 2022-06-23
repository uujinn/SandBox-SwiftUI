//
//  RandomUser+ResponseData.swift
//  AlamofireCombine
//
//  Created by 양유진 on 2022/06/24.
//

import Foundation

struct RandomUserResponse: Codable, CustomStringConvertible{
  var results: [RandomUser]
  var info: Info
  
  private enum CodingKeys: String, CodingKey {
    case results, info
  }
  
  var description: String{
    return "results.count: \(results.count) / info: \(info.seed)"
  }
  
}

struct RandomUser: Identifiable, Codable {
  var id = UUID()
  var name: Name
  var photo: Photo
  
  private enum CodingKeys: String, CodingKey {
    case name = "name"
    case photo = "picture"
  }
  
  static func getDummy() -> Self{
    print(#fileID, #function, #line, "")
    return RandomUser(name: Name.getDummy(), photo: Photo.getDummy())
  }
  
  var profileImgUrl: URL {
    get{
      URL(string: photo.medium)!
    }
  }
  
  var description: String{
    return name.description
  }
}

struct Name: Codable {
  var title: String
  var first: String
  var last: String
  
  var description: String{
    return "[\(title)] \(last) \(first)"
  }
  
  static func getDummy() -> Self{
    print(#fileID, #function, #line, "")
    return Name(title: "제디", first: "유진", last: "양")
  }
}

struct Photo: Codable {
  var large: String
  var medium: String
  var thumbnail: String
  
  static func getDummy() -> Self{
    print(#fileID, #function, #line, "")
    return Photo(large: "https://randomuser.me/api/portraits/men/0.jpg", medium: "https://randomuser.me/api/portraits/med/men/0.jpg", thumbnail: "https://randomuser.me/api/portraits/thumb/men/0.jpg")
  }
}

struct Info: Codable{
  var seed: String
  var resultsCount: Int
  var page: Int
  var version: String
  
  private enum CodingKeys: String, CodingKey{
    case seed = "seed"
    case resultsCount = "results"
    case page = "page"
    case version = "version"
  }
}
