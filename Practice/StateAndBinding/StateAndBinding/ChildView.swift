//
//  ChildView.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/18.
//

import SwiftUI

struct ChildView: View {
  @Binding var qwe: Int
  var body: some View {
    Stepper("test: \(qwe)", value: $qwe)
  }
}

//struct ChildView_Previews: PreviewProvider {
//  static var previews: some View {
//    ChildView(test: 20)
//  }
//}
