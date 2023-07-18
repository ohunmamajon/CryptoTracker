//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/19.
//

import Foundation
class HomeViewModel: ObservableObject {
 
    @Published var allCoins: [Coin] = []
    @Published var portfolioCoins: [Coin] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreview.instance.coin)
            self.portfolioCoins.append(DeveloperPreview.instance.coin)
        }
    }
    
}
