//
//  MyList.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/26.
//

import SwiftUI

struct MyProfile: View {

    @Binding var isNavigationBarHidden: Bool
    
    init(isNavigtaionBarHidden: Binding<Bool> = .constant(false)) {
        _isNavigationBarHidden = isNavigtaionBarHidden
    }
    
    var body: some View{
        ScrollView{
            VStack(spacing: 20){
                Image("cat1")
                    .resizable()
                    .frame(width: 250, height: 250)
                    .clipShape(Circle())
                    .overlay(
                        Circle().strokeBorder(lineWidth: 15)
                            .foregroundColor(.yellow)
                            .shadow(radius: 10)
                    )
                Divider()
                    .opacity(0)
                
                Text("uujinn")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                Text("아자자 화이팅")
                    .font(.system(size: 20))
                HStack{
                    Button(action: {
                        print("Hello")
                    }){
                        Text("Github")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            
                        
                    }
                    .frame(width: 130, height: 60)
                    .background(.red)
                    .cornerRadius(20)
                    
                    Button(action: {
                        print("Hello")
                    }){
                        Text("Blog")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                            
                        
                    }
                    .frame(width: 130, height: 60)
                    .background(.orange)
                    .cornerRadius(20)
                    
                }
            }
            .navigationBarTitle("내 프로필")
            .navigationBarItems(trailing:
                NavigationLink(destination:
                Text("설정화면")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ){
                    Image(systemName: "gear")
                        .font(.headline)
                        .foregroundColor(.black)
                }
            )
            .onAppear{
                self.isNavigationBarHidden = false
            }
        }

    }
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
    }
}
