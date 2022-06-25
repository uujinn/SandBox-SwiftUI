//
//  StateAndBindingApp.swift
//  StateAndBinding
//
//  Created by 양유진 on 2022/06/18.
//

import SwiftUI

@main
struct StateAndBindingApp: App {
    var body: some Scene {
        WindowGroup {
          ContentView(appTitle: "터벅터벅").environmentObject(MyViewModel())
        }
    }
}
