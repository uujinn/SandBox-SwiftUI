//
//  MyViewModel.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/25.
//

import SwiftUI
import Foundation
import Combine

class MyViewModel: ObservableObject {
  @Published var appTitle: String = "나에 일상"
}

