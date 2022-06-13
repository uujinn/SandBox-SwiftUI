//
//  SwiftUI_tutorialApp.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/11.
//

import SwiftUI

@main
struct SwiftUI_tutorialApp: App {
    @UIApplicationDelegateAdaptor var delegate: MyAppDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
