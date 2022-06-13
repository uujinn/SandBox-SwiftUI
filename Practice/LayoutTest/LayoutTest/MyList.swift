//
//  MyList.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/26.
//

import SwiftUI

struct MyList: View {
    
    @Binding var isNavigationBarHidden: Bool
    
    
    
    init(isNavigationBarHidden: Binding<Bool> = .constant(false)){
        if #available(iOS 14.0, *){
            
        }else{
            UITableView.appearance().tableFooterView = UIView()
        }
        UITableView.appearance().separatorStyle = .none
        _isNavigationBarHidden = isNavigationBarHidden
    }
    
    var body: some View{
  
        List{
            
            Section(header: Text("오늘 할 일").font(.headline).foregroundColor(.black), footer: Text("footer")){
                ForEach(1...3, id: \.self){ itemIndex in

                    MyCard(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "12:30 AM", end: "1 AM", bgColor: Color.yellow)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            
            Section(header: Text("내일 해야 할 일").font(.headline).foregroundColor(.black), footer: Text("footer")){
                ForEach(1...4, id: \.self){ itemIndex in

                    MyCard(icon: "book.fill", title: "책 읽기 \(itemIndex)", start: "12:30 AM", end: "1 AM", bgColor: Color.blue)
                }
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
            .listRowBackground(Color.yellow)

        }
        .listStyle(.grouped)
        .navigationTitle("My List")
        .onAppear{
            self.isNavigationBarHidden = false
//        List{
//            ForEach(1...10, id: \.self){
//                Text("My List \($0)")
//            }
        }
        
    }// NavigationView
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
