//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .toolbar(.hidden, for: .navigationBar)
            }
        }
    }
}
