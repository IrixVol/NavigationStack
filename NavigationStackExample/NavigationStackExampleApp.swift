//
//  NavigationStackExampleApp.swift
//  NavigationStackExample
//
//  Created by Tatiana on 26.05.2024.
//

import SwiftUI

@main
struct NavigationStackExampleApp: App {
    var body: some Scene {
        WindowGroup {
            MainMenu()
                .onAppear {
                    setupNavigationBarAppearance()
                }
        }
    }
}
