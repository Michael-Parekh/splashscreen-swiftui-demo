//
//  SplashScreen_SwiftUI_DemoApp.swift
//  SplashScreen SwiftUI Demo
//
//  Created by Michael Parekh on 1/21/24.
//

import SwiftUI

@main
struct SplashScreen_SwiftUI_DemoApp: App {
    var body: some Scene {
        WindowGroup {
            // Since we want the SplashScreen to be the first thing that the user sees, we can place SplashScreenView here instead of ContentView.
            SplashScreenView()
        }
    }
}
