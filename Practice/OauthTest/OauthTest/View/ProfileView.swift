//
//  ProfileView.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/27.
//

import SwiftUI

struct ProfileView: View {
  
  @State var id: String = ""
  @State var name: String = ""
  @State var email: String = ""
  @State var avatarImg: String = ""
  
  var body: some View {
    VStack{
      Form{
        Section{
          HStack{
            Spacer()
            if !avatarImg.isEmpty{
              AsyncImage(url: URL(string: avatarImg)!){ phase in
                switch phase {
                case .empty:
                  ProgressView()
                    .frame(width: 250, height: 250, alignment: .center)
                case .success(let image):
                  image
                    .resizable()
                    .frame(width: 250, height: 250, alignment: .center)
                case .failure:
                  Image(systemName: "person.fill.questionmark")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .frame(width: 250, height: 250, alignment: .center)
                @unknown default:
                  EmptyView()
                    .frame(width: 250, height: 250, alignment: .center)
                }
                
              }
            }else{
              Image(systemName: "person.fill.questionmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .frame(width: 250, height: 250, alignment: .center)
            }
          }
          Section{
            Text("아이디: \(id)")
            Text("이름: \(name)")
            Text("이메일: \(email)")
          }
          Section{
            Button {
              print("새로고침 버튼 클릭")
            } label: {
              Text("새로 고침")
            }
            
          }
        }
      }
      .navigationTitle("Profile")
    }
  }
}

struct ProfileView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
