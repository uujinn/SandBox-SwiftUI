//
//  UserListView.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/27.
//

import SwiftUI

struct UserListView: View {
  @State var users: [UserData] = [
    UserData(id: 0, name: "호호호", email: "hahaha@naver.com", avatar: "https://images.unsplash.com/photo-1656239166437-fb78cf0e5153?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
    UserData(id: 1, name: "호호호", email: "hahaha@naver.com", avatar: "https://images.unsplash.com/photo-1656239166437-fb78cf0e5153?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
    UserData(id: 2, name: "호호호", email: "hahaha@naver.com", avatar: "https://images.unsplash.com/photo-1656239166437-fb78cf0e5153?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80")
  ]
  
  var body: some View {
    VStack{
      List(users){ aUser in
        NavigationLink(destination: OtherUserProfileView(userData: aUser)) {
          HStack{
            AsyncImage(url: URL(string: aUser.avatar)!){ phase in
              switch phase {
              case .empty:
                ProgressView()
                  .frame(width: 120, height: 120, alignment: .center)
              case .success(let image):
                image
                  .resizable()
                  .frame(width: 120, height: 120, alignment: .center)
              case .failure:
                Image(systemName: "person.fill.questionmark")
                  .resizable()
                  .aspectRatio(contentMode: .fit)
                  .padding()
                  .frame(width: 120, height: 120, alignment: .center)
              @unknown default:
                EmptyView()
                  .frame(width: 120, height: 120, alignment: .center)
              }
            }
            Spacer()
            VStack(alignment: .leading){
              Text(aUser.name)
                .font(.title3)
              Text(aUser.email)
                .font(.callout)
            }
            Spacer()
          }
          
        }
      }
      .navigationTitle("사용자 목록")
    }
  }
}

struct UserListView_Previews: PreviewProvider {
  static var previews: some View {
    UserListView()
  }
}
