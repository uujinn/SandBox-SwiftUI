//
//  LayoutTestApp.swift
//  LayoutTest
//
//  Created by 양유진 on 2022/04/24.
//

import SwiftUI

@main
struct LayoutTestApp: App {
    var body: some Scene {
        WindowGroup {
            MyCustomTabView(tabIndex: .home)
        }
    }
}
