//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    
    @StateObject private var vm = HomeViewModel()
    @State var showLaunchView: Bool = true
    
    init(){
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.tint)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(Color.theme.tint)]
    }
    
    var body: some Scene {
        WindowGroup {
            
            ZStack{
          
                
                NavigationStack {
                    HomeView()
                        .toolbar(.hidden, for: .navigationBar)
                }
                .environmentObject(vm)
                .tint(Color.theme.tint)
                
                
                ZStack {
               
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                    
                }
                .zIndex(2.0)
            }
          
        }
    }
}
