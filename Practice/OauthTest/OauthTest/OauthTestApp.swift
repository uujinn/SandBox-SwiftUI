//
//  OauthTestApp.swift
//  OauthTest
//
//  Created by 양유진 on 2022/06/26.
//

import SwiftUI

@main
struct OauthTestApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView().environmentObject(UserViewModel())
        }
    }
}
