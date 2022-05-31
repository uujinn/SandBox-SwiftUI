//
//  HomeView.swift
//  Sofa-demo
//
//  Created by 양유진 on 2022/05/31.
//

import SwiftUI

struct HomeView: View{

    var title: String
    var bgColor: Color
    
    var body: some View{
        ZStack{
            bgColor
                .edgesIgnoringSafeArea(.all)
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.white)
        }
    }
}


struct HomeView_Previews: PreviewProvider{
    static var previews: some View{
        HomeView(title: "HomeView", bgColor: Color.orange)
    }
}
