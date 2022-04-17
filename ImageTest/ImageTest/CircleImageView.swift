//
//  CircleImageView.swift
//  ImageTest
//
//  Created by 양유진 on 2022/04/18.
//

import SwiftUI

struct CircleImageView: View  {
    var body: some View{
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(Color.blue)
//            .shadow(color: .gray, radius: 2, x: 0, y: 10)
        Image("myimage")
            .resizable()
            .scaledToFill()
            .clipShape(Circle())
            .shadow(color: .gray, radius: 5, x: 10, y: 10)
            .overlay(Circle().foregroundColor(.black).opacity(0.5))
            .overlay(
                Circle().stroke(.blue, lineWidth: 10)
                    .padding()
            )
            .overlay(
                Circle().stroke(.yellow, lineWidth: 10)
                    .padding(30)
            )
            .overlay(
                Circle().stroke(.black, lineWidth: 10)
            )
            .overlay(
                Text("uujinn").foregroundColor(.white)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
            )
        
//            .aspectRatio(contentMode: .fill)
            .frame(width: 300, height: 300)
            
//            .edgesIgnoringSafeArea(.all)
        
    }
}


struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
