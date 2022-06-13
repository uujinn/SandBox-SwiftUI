//
//  MyAppDelegate.swift
//  SwiftUI_tutorial
//
//  Created by 양유진 on 2022/04/11.
//
import SwiftUI

class MyAppDelegate: NSObject, UIApplicationDelegate {
    //...
    
    func application(
        _ application: UIApplication,
        configurationForConnecting connectingSceneSession: UISceneSession,
        options: UIScene.ConnectionOptions
    ) -> UISceneConfiguration {
        let sceneConfig = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        sceneConfig.delegateClass = MySceneDelegate.self
        return sceneConfig
    }
}
