//
//  MyCustomTabView.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/06/01.
//

import SwiftUI

enum TabIndex {
//    case home
//    case cart
//    case profile
    case home, cart, profile
}

struct MyCustomTabView: View{
    
    @State var tabIndex: TabIndex
    @State var largerScale: CGFloat = 1.4
    
    func changeMyView(tabIndex: TabIndex) -> MyView{
        switch tabIndex {
        case .home:
            return MyView(title: "Home", bgColor: Color.orange)
        case .cart:
            return MyView(title: "Cart", bgColor: Color.yellow)
        case .profile:
            return MyView(title: "Profile", bgColor: Color.blue)
        }
    }
    
    func calcCircleBgPosition(geometry: GeometryProxy) -> CGFloat{
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return (geometry.size.width / 3)
        }
    }
    
    var body: some View{
//        Text("MyCustomTabView")
        
        GeometryReader{ geometry in
            ZStack(alignment: .bottom){
                self.changeMyView(tabIndex: self.tabIndex)
                
                Circle()
                    .frame(width: 90, height: 90)
                    .offset(x: calcCircleBgPosition(geometry: geometry), y: 15)
                    .foregroundColor(.white)
                
                HStack(spacing: 0){
                    Button(action: {
                        print("홈 버튼 클릭")
                        
                        withAnimation{
                            self.tabIndex = .home
                        }
                    }){
                        Image(systemName: "house.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0 )
                            .foregroundColor(self.tabIndex == .home ? Color.blue : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .home ? -10 : 0)
                    }.background(Color.white)
                    Button(action: {
                        print("카트 버튼 클릭")
                        withAnimation{
                            self.tabIndex = .cart
                        }
                    }){
                        Image(systemName: "cart.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0 )
                            .foregroundColor(self.tabIndex == .cart ? Color.blue : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .cart ? -10 : 0)
                    }.background(Color.white)
                    Button(action: {
                        withAnimation{
                            self.tabIndex = .profile
                        }
                        print("프로필 버튼 클릭")
                    }){
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 25))
                            .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0 )
                            .foregroundColor(self.tabIndex == .profile ? Color.blue : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                            .offset(y: self.tabIndex == .profile ? -10 : 0)
                    }.background(Color.white)
                }
            }
            
        }.edgesIgnoringSafeArea(.all)
        
    }
}


struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View{
        MyCustomTabView(tabIndex: .home)
    }
}
