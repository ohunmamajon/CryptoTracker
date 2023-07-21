//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/19.
//

import Foundation
import Combine
class HomeViewModel: ObservableObject {
 
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let  dataService = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       addSubscribers()
    }
    
    func addSubscribers(){
        dataService.$allCoins
            .sink { [weak self] returnedCoins in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
}
