//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/19.
//

import Foundation
import Combine
class HomeViewModel: ObservableObject {
    
    
    @Published var statistics: [StatisticModel] =  [StatisticModel(title: "TitLe", value: "Value", percentageChange: 2),
    StatisticModel(title: "Title", value: "Value"),
    StatisticModel(title: "Title", value: "Value"),
    StatisticModel(title: "Title", value: "Value", percentageChange: -3)]
 
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let  dataService = CoinDataService()
    
    private var cancellables = Set<AnyCancellable>()
    
    init() {
       addSubscribers()
    }
    
    func addSubscribers(){
       
        $searchText
            .combineLatest(dataService.$allCoins)
            .debounce(for: 0.5, scheduler: DispatchQueue.main)
            .map(filterCoins)
            .sink { [weak self ](returnedCoins) in
                self?.allCoins = returnedCoins
            }
            .store(in: &cancellables)
    }
    
    private func filterCoins (text: String , coins: [CoinModel]) -> [CoinModel] {
        guard !text.isEmpty else {
            return coins
        }
        let lowercasedText = text.lowercased()
         return coins.filter { (coin) -> Bool in
             return coin.name.lowercased().contains(lowercasedText) || coin.symbol.lowercased().contains(lowercasedText) || coin.id.lowercased().contains(lowercasedText)
        }
    }
    
}
