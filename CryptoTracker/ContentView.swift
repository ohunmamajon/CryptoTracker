//
//  ContentView.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Color.theme.background
                .ignoresSafeArea()
            
            VStack{
                Text("Tint Color")
                    .foregroundColor(Color.theme.green)
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
