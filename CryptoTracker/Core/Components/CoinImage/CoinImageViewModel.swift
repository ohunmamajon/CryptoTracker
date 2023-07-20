//
//  CoinImageViewModel.swift
//  CryptoTracker
//
//  Created by Okhunjon Mamajonov on 2023/07/20.
//

import Foundation
import SwiftUI
import Combine
class CoinImageViewModel: ObservableObject {
    @Published var image: UIImage? = nil
    @Published var isloading: Bool = false
    
    private let coin: CoinModel
    private let dataService: CoinImageService
    private var cancellables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coin = coin
        dataService = CoinImageService(coin: coin)
       addSubscribers()
        self.isloading = true
    }
  private  func addSubscribers(){
      dataService.$image
          .sink { [weak self] (_) in
              self?.isloading = false
          } receiveValue: { [weak self] returnedImage in
              self?.image = returnedImage
          }
          .store(in: &cancellables)
    }
}
